defmodule WtoolWeb.TeamController do
  use WtoolWeb, :controller

  def index(conn, _params) do
    render(conn, :home, layout: false)
  end
end
