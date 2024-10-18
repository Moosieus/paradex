import Config

config :exla,
  clients: [
    cuda: [
      platform: :cuda,
      memory_fraction: 0.85,
      device_id: 0
    ]
  ],
  client: :cuda

config :nx,
  default_backend: {EXLA.Backend, client: :cuda, device_id: 0}

config :paradex, :ecto_repos, [ParadexApp.Repo]

config :paradex, ParadexApp.Repo,
  pool: Ecto.Adapters.SQL.Sandbox,
  database: "paradex_test",
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  port: 5433,
  types: ParadexApp.PostgrexTypes
