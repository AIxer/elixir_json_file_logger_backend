LoggerJsonFileBackend
===

LoggerJsonFileBackend is elixir `logger` backend that writes json logs to a file.

Configuration
---

This logger backend provides follow options:

| name          | description |
| ------------- | ----------- |
| path          | log file path. this option is "MUST" |
| level         | minimum logging level. default is `:info` |
| metadata      | included metadata keys list. detault is empty list |

You need to add logger backend setting

```elixir
config :logger,
  backends: [{LoggerJSONFileBackend, :log_name}]

config :logger, :log_name,
  path: "/var/log/my_app/app.log",
  level: :info,
  metadata: [:request_id, :user_id, :method, :path, :req_params],
```

Use case
---

This module is assumed to be used with a custom plug logger.

```elixir
Logger.info("request", [
  method:     conn.method,
  path:       conn.request_path,
  req_params: conn.params,
])
```
