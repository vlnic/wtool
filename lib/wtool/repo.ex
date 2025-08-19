defmodule Wtool.Repo do
  use Ecto.Repo,
    otp_app: :wtool,
    adapter: Ecto.Adapters.SQLite3
end
