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

# %% Coherence Configuration %%   Don't remove this line
config :coherence,
  user_schema: Cynara.Coherence.User,
  repo: Cynara.Repo,
  module: Cynara,
  web_module: CynaraWeb,
  router: CynaraWeb.Router,
  messages_backend: CynaraWeb.Coherence.Messages,
  logged_out_url: "/sessions/new",
  registration_permitted_attributes: ["email","name","password","current_password","password_confirmation"],
  invitation_permitted_attributes: ["name","email"],
  password_reset_permitted_attributes: ["reset_password_token","password","password_confirmation"],
  session_permitted_attributes: ["remember","email","password"],
  email_from_name: "Your Name",
  email_from_email: "yourname@example.com",
  opts: [:authenticatable, :recoverable, :lockable, :trackable, :unlockable_with_token, :invitable, :registerable]

config :coherence, CynaraWeb.Coherence.Mailer,
  adapter: Swoosh.Adapters.Sendgrid,
  api_key: "your api key here"
# %% End Coherence Configuration %%
