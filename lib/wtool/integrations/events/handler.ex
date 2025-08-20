defmodule Wtool.Integrations.Events.Handler do
  require Logger

  def handle(_conn, params) do
    Logger.debug("#{__MODULE__}.handle #{inspect params}")
    :ok
  end
end
