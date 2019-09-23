defmodule CynaraWeb.Router do
  use CynaraWeb, :router
  use Coherence.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug Coherence.Authentication.Session
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  pipeline :protected do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug Coherence.Authentication.Session, protected: true
  end

  scope "/" do
    pipe_through :browser
    coherence_routes()
  end

  scope "/" do
    pipe_through :protected
    coherence_routes :protected
  end

  scope "/", CynaraWeb do
    pipe_through :browser # Use the default browser stack

    # add public resources below
  end
  
  scope "/", CynaraWeb do
    pipe_through :protected
    
    # add protected resources below
    get "/", PageController, :index
    # resources "/privates", MyProjectWeb.PrivateController
  end

  # Other scopes may use custom stacks.
  # scope "/api", CynaraWeb do
  #   pipe_through :api
  # end
end
