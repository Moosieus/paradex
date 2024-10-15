defmodule Paradex.Test.Helpers do
  defmacro assert_sql(left, right) do
    quote bind_quoted: [left: left, right: right] do
      assert Paradex.Test.Helpers.to_sql(left) == Paradex.Test.Helpers.to_sql(right)
    end
  end

  def to_sql(query) when is_binary(query), do: query

  def to_sql(query) do
    {sql, _} = Ecto.Adapters.SQL.to_sql(:all, ParadexApp.Repo, query)
    sql
  end
end
