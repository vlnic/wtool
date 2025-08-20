defmodule WtoolWeb.EventController do
  use WtoolWeb, :controller

  alias Wtool.Integrations.Events.Handler

  require Logger

  def handle(conn, params) do
    case Handler.handle(conn, params) do
      :ok ->
        json(conn, %{"status" => "ok"})

      error ->
        Logger.warning("handle event error: #{inspect error}")
        json(conn, %{"status" => "failed"})
    end
  end
end
