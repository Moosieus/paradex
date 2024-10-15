defmodule ParadeDBApp.Repo do
  use Ecto.Repo,
    otp_app: :paradedb,
    adapter: Ecto.Adapters.Postgres
end
