defmodule ElixirBarebonesWeb.Router do
  use ElixirBarebonesWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ElixirBarebonesWeb do
    pipe_through :api
  end
end
