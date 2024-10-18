defmodule ParadexApp.Call do
  use Ecto.Schema

  alias ParadexApp.TalkGroup

  schema "calls" do
    field(:call_length, :integer)
    field(:start_time, :naive_datetime)
    field(:stop_time, :naive_datetime)
    field(:talkgroup_num, :integer)
    field(:transcript, :string)
    field(:embedding, Pgvector.Ecto.Vector)

    belongs_to(:talk_group, TalkGroup)
  end
end
