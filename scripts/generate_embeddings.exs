import Ecto.Query

alias ParadexApp.Repo
alias ParadexApp.Call

ParadexApp.Repo.start_link()

{:ok, model_info} = Bumblebee.load_model({:hf, "sentence-transformers/all-MiniLM-L6-v2"})
{:ok, tokenizer} = Bumblebee.load_tokenizer({:hf, "sentence-transformers/all-MiniLM-L6-v2"})

serving = Bumblebee.Text.TextEmbedding.text_embedding(model_info, tokenizer)

defmodule CallStream do
  defp start(), do: 0

  defp next(last_id) do
    calls =
      from(
        c in Call,
        where: c.id > ^last_id,
        where: is_nil(c.embedding),
        order_by: [asc: c.id],
        limit: 100
      ) |> Repo.all()

    case calls do
      [] -> {:halt, last_id}
      calls -> {calls, List.last(calls).id}
    end
  end

  defp finally(_last_id), do: :noop

  def resource() do
    Stream.resource(&start/0, &next/1, &finally/1)
  end
end

update_embedding = fn call ->
  %{embedding: embedding} = Nx.Serving.run(serving, call.transcript)

  Repo.update_all(
    from(c in Call, where: c.id == ^call.id),
    set: [embedding: Pgvector.new(embedding)]
  )
end

(
  Repo.transaction(fn ->
    CallStream.resource()
    |> Stream.each(& update_embedding.(&1))
    |> Stream.run()
  end, timeout: :infinity)
)
