# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :cynara,
  ecto_repos: [Cynara.Repo]

# Configures the endpoint
config :cynara, CynaraWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ciaHs2+rh/YFJdIUeL0+CnztQI6Tq7joFiy7FIUw34hLCEW/GCByeSmcEuWQbgZM",
  render_errors: [view: CynaraWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Cynara.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
