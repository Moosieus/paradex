ExUnit.start()
ParadeDBApp.Repo.start_link()
Ecto.Adapters.SQL.Sandbox.mode(ParadeDBApp.Repo, :manual)
