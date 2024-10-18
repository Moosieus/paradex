defmodule ParadexApp.Repo.Migrations.AddEmbeddings do
  use Ecto.Migration

  def change() do
    create index("calls", ["embedding vector_l2_ops"], using: :hnsw)
  end
end
