defmodule ParadexApp.Repo.Migrations.Setup do
  use Ecto.Migration

  def up() do
    create table(:talk_groups) do
      add :decimal, :integer, null: false
      add :description, :text, null: false
      add :alpha_tag, :text, null: false
      add :category, :text, null: false
      add :tag, :text, null: false
      add :active, :boolean, null: false, default: true

      timestamps(type: :utc_datetime)
    end

    unique_index(:talk_groups, [:decimal, :active])

    create table(:calls) do
      add :call_length, :integer, null: false
      add :start_time, :naive_datetime, null: false
      add :stop_time, :naive_datetime, null: false
      add :talk_group_id, references(:talk_groups)
      add :talkgroup_num, :integer, null: false
      add :transcript, :text
    end

    create index(:calls, :start_time)

    calls_text_fields =
      %{
        transcript: %{
          tokenizer: %{
            type: "default",
            stemmer: "English"
          }
        }
      }
      |> Jason.encode!()

    create index(
      :calls,
      [:id, :transcript, :call_length, :talkgroup_num, :talk_group_id, :start_time, :stop_time],
      using: "bm25",
      name: "calls_search_idx",
      options: "key_field = 'id', text_fields = '#{calls_text_fields}'"
    )

    create index(
      :talk_groups,
      [:id, :description, :alpha_tag, :category, :tag, :active],
      using: "bm25",
      name: "talk_groups_search_idx",
      options: "key_field = 'id'"
    )
  end
end
