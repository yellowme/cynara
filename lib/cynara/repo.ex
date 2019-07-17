defmodule Cynara.Repo do
  use Ecto.Repo,
    otp_app: :cynara,
    adapter: Ecto.Adapters.Postgres
end
