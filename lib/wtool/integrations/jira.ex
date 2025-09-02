defmodule Wtool.Integrations.Jira do
  require Logger

  def user_info(login) do
    case JiraConnect.User.find(%{username: login}) do
      {:ok, %{"key" => user_id, "emailAddress" => email, "name" => name}} ->
        {:ok, %{user_id: user_id, email: email, login: name}}

      error ->
        Logger.debug("Find user #{login} error: #{inspect error}")
        {:error, :user_not_found}
    end
  end
end
