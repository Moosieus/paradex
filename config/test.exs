import Config

config :paradedb, :ecto_repos, [ParadeDBApp.Repo]

config :paradedb, ParadeDBApp.Repo,
  pool: Ecto.Adapters.SQL.Sandbox,
  database: "paradedb_test",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"
