defmodule ParadeDBApp.Call do
  use Ecto.Schema

  alias ParadeDBApp.TalkGroup

  schema "calls" do
    field(:call_length, :integer)
    field(:start_time, :naive_datetime)
    field(:stop_time, :naive_datetime)
    field(:talkgroup_num, :integer)
    field(:transcript, :string)

    belongs_to(:talk_group, TalkGroup)
  end
end
