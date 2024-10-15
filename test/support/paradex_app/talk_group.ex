defmodule ParadexApp.TalkGroup do
  use Ecto.Schema

  schema "talk_groups" do
    field(:decimal, :integer)
    field(:description, :string)
    field(:alpha_tag, :string)
    field(:category, :string)
    field(:tag, :string)
    field(:active, :boolean, default: true)

    timestamps(type: :utc_datetime)
  end
end
