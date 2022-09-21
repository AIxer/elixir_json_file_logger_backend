import Config

config :logger,
  backends: [{LoggerJSONFileBackend, :dev}]

config :logger, :dev,
  level: :debug,
  path: "test/logs/dev.log",
  metadata: [:req_params]
