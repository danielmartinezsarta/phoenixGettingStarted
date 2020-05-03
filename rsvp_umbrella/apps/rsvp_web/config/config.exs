# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :rsvp_web, RsvpWebWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ewr0CMCsjOxgxrcWIwc7N3QnLul6zc3VrLcJHjnT/aSr80/P9qR2W5SkQTX9fhMf",
  render_errors: [view: RsvpWebWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: RsvpWeb.PubSub,
  live_view: [signing_salt: "PwfwIQOt"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
