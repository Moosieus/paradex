ExUnit.start()
ParadexApp.Repo.start_link()
Ecto.Adapters.SQL.Sandbox.mode(ParadexApp.Repo, :manual)
