defmodule ParadeDB.DataCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      alias ParadeDBApp.Repo

      import Ecto
      import Ecto.Changeset
      import Ecto.Query
      import ParadeDB.DataCase
    end
  end

  setup tags do
    ParadeDB.DataCase.setup_sandbox(tags)
    :ok
  end

  def setup_sandbox(tags) do
    repo_pid = Ecto.Adapters.SQL.Sandbox.start_owner!(ParadeDBApp.Repo, shared: not tags[:async])
    on_exit(fn -> Ecto.Adapters.SQL.Sandbox.stop_owner(repo_pid) end)
  end
end
