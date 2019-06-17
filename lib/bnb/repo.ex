defmodule Bnb.Repo do
  use Ecto.Repo,
    otp_app: :bnb,
    adapter: Ecto.Adapters.Postgres
end
