defmodule AdelWeb.Router do
  use AdelWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/", AdelWeb do
    pipe_through :browser # Use the default browser stack

    get "/", DashboardController, :index
  end
end
