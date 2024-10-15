defmodule ParadeDB.Test.Helpers do
  defmacro assert_sql(left, right) do
    quote bind_quoted: [left: left, right: right] do
      assert ParadeDB.Test.Helpers.to_sql(left) == ParadeDB.Test.Helpers.to_sql(right)
    end
  end

  def to_sql(query) when is_binary(query), do: query

  def to_sql(query) do
    {sql, _} = Ecto.Adapters.SQL.to_sql(:all, ParadeDBApp.Repo, query)
    sql
  end
end
