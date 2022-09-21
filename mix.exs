defmodule LoggerJSONFileBackend.Mixfile do
  use Mix.Project

  def project do
    [app: :logger_json_file_backend,
     version: "0.2.0",
     description: "Logger backend that write a json map per line to a file",
     elixir: "~> 1.10",
     package: package(),
     deps: deps()]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:jason, "~> 1.4"}
    ]
  end

  defp package do
    [
      maintainers: ["Hidetaka Kojo", "Lei Yuan", "Hiroaki Murayama"],
      licenses: ["ISC"],
      links: %{"GitHub" => "https://github.com/xflagstudio/elixir_logger_json_file_backend"}
    ]
  end
end
