Postgrex.Types.define(
  ParadexApp.PostgrexTypes,
  Pgvector.extensions() ++ Paradex.extensions() ++ Ecto.Adapters.Postgres.extensions(),
  []
)
