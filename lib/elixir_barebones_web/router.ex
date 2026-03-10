defmodule ElixirBarebonesWeb.Router do
  use ElixirBarebonesWeb, :router

  if Mix.env() == :dev do
    plug Tidewave
  end
  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ElixirBarebonesWeb do
    pipe_through :api
  end
end
