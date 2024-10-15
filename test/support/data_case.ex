defmodule Paradex.DataCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      alias ParadexApp.Repo

      import Ecto
      import Ecto.Changeset
      import Ecto.Query
      import Paradex.DataCase
    end
  end

  setup tags do
    Paradex.DataCase.setup_sandbox(tags)
    :ok
  end

  def setup_sandbox(tags) do
    repo_pid = Ecto.Adapters.SQL.Sandbox.start_owner!(ParadexApp.Repo, shared: not tags[:async])
    on_exit(fn -> Ecto.Adapters.SQL.Sandbox.stop_owner(repo_pid) end)
  end
end
