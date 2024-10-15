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

    execute("""
    CALL paradedb.create_bm25(
      index_name => 'calls_search_idx',
      table_name => 'calls',
      key_field => 'id',
      text_fields => paradedb.field(
        name => 'transcript',
        tokenizer => paradedb.tokenizer('stem', language => 'English')
      ),
      numeric_fields => paradedb.field('call_length') || paradedb.field('talkgroup_num') || paradedb.field('talk_group_id'),
      datetime_fields => paradedb.field('start_time') || paradedb.field('stop_time')
    )
    """)

    execute("""
    CALL paradedb.create_bm25(
      index_name => 'talk_groups_search_idx',
      schema_name => 'public',
      table_name => 'talk_groups',
      key_field => 'id',
      text_fields => paradedb.field(
        name => 'description'
      ) || paradedb.field(
        name => 'alpha_tag'
      ) || paradedb.field(
        name => 'category',
        tokenizer => paradedb.tokenizer('raw')
      ) || paradedb.field(
        name => 'tag',
        tokenizer => paradedb.tokenizer('raw')
      ),
      boolean_fields => paradedb.field('active')
    )
    """)
  end

  def down() do
    execute("""
    CALL paradedb.drop_bm25(
      index_name => 'talk_groups_search_idx',
      schema_name => 'public'
    )
    """)

    execute("""
    CALL paradedb.drop_bm25(
      index_name => 'calls_search_idx',
      schema_name => 'public'
    )
    """)

    drop table(:calls)

    drop table(:talk_groups)
  end
end
