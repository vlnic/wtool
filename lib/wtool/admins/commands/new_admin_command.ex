defmodule Wtool.Admins.Commands.NewAdminCommand do
  alias Wtool.Admins
  alias Wtool.Admins.User
  alias Wtool.Repo

  def execute(email, pass) do
    case Admins.register_user(%{email: email, password: pass}) do
      {:ok, user} ->
        user
        |> User.confirm_changeset()
        |> Repo.update()

      error ->
        error
    end
  end
end
