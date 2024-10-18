import Config

config :paradex, :ecto_repos, [ParadexApp.Repo]

config :paradex, ParadexApp.Repo,
  pool: Ecto.Adapters.SQL.Sandbox,
  database: "paradex_test",
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  port: 5433,
  types: ParadexApp.PostgrexTypes
