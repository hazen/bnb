# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :bnb,
  ecto_repos: [Bnb.Repo]

# Configures the endpoint
config :bnb, BnbWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hLYPHBKWYuz8zFzNi/AkXBBjbkbWlozB0X7L4g1TWxUSV5spGKXSurCqVOaRYw4+",
  render_errors: [view: BnbWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Bnb.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
