defmodule Uswidi.Repo do
  use Ecto.Repo,
    otp_app: :uswidi,
    adapter: Ecto.Adapters.Postgres
end
