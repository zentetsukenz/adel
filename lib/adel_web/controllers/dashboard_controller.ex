defmodule AdelWeb.DashboardController do
  use AdelWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
