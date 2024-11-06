defmodule Paradex.FieldName do
  @behaviour Postgrex.Extension

  import Postgrex.BinaryUtils, warn: false

  # Postgres column names are limited to 59 characters ~r/[a-zA-Z0-9_]/ so
  # they always fall below Erlang's 64 byte threshold for reference counting.

  @impl true
  def init(_opts), do: nil

  @impl true
  def matching(_state), do: [type: "fieldname"]

  @impl true
  def format(_state), do: :text

  @impl true
  def encode(_state) do
    quote do
      bin when is_binary(bin) -> [<<byte_size(bin)::int32()>> | bin]
    end
  end

  @impl true
  def decode(_state) do
    quote do
      <<len::int32(), bin::binary-size(len)>> -> bin
    end
  end
end
