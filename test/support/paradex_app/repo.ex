defmodule ParadexApp.Repo do
  use Ecto.Repo,
    otp_app: :paradex,
    adapter: Ecto.Adapters.Postgres
end
