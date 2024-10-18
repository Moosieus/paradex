defmodule ParadexApp.Repo.Migrations.AddEmbeddings do
  use Ecto.Migration

  def change() do
    alter table(:calls) do
      add :embedding, :vector, size: 384
    end
  end
end
