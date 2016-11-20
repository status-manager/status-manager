# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :status_manager,
  ecto_repos: [StatusManager.Repo]

# Configures the endpoint
config :status_manager, StatusManager.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "bVfRFyzLv4kpDeNVmPD+Ysr98Na1h5Tyk7Em4CAikyMTchg1uGjoB92Bpu67MwF6",
  render_errors: [view: StatusManager.ErrorView, accepts: ~w(html json)],
  pubsub: [name: StatusManager.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
