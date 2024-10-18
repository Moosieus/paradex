import Ecto.Query

alias ParadexApp.Repo
alias ParadexApp.Call

Repo.start_link()

{:ok, model_info} = Bumblebee.load_model({:hf, "sentence-transformers/all-MiniLM-L6-v2"})
{:ok, tokenizer} = Bumblebee.load_tokenizer({:hf, "sentence-transformers/all-MiniLM-L6-v2"})

serving = Bumblebee.Text.TextEmbedding.text_embedding(model_info, tokenizer)

%{embedding: embedding} = Nx.Serving.run(serving, "bus is going to run behind schedule")

short_list = 25

vector = Pgvector.new(embedding)

semantic_search = from(
  sem in fragment("""
    SELECT id, RANK() OVER (ORDER BY embedding <=> ?)
    FROM calls
    ORDER BY embedding <=> ?
    LIMIT ?
  """, ^vector, ^vector, ^short_list),
  select: %{id: sem.id, rank: sem.rank}
)

search = "bus late behind schedule"

bm25_search = from(
  bm25 in fragment("""
    SELECT id, RANK() OVER (ORDER BY paradedb.score(id) DESC)
    FROM calls
    WHERE transcript @@@ ?
    LIMIT ?
  """, ^search, ^short_list),
  select: %{id: fragment("id"), rank: fragment("rank")}
)

final_list = 10

from(
  sem in subquery(semantic_search),
  full_join: bm25 in subquery(bm25_search), on: sem.id == bm25.id,
  join: c in Call, on: c.id == coalesce(sem.id, bm25.id),
  order_by: [desc: fragment("score"), asc: c.id],
  limit: ^final_list,
  select: %{
    score: fragment("COALESCE(1.0 / (60 + ?), 0.0) + COALESCE(1.0 / (60 +?), 0.0) AS score", sem.rank, bm25.rank),
    transcript: c.transcript,
  }
)
|> Repo.all()
