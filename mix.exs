defmodule LoggerLogstashBackend.Mixfile do
  use Mix.Project

  def project do
    [app: :logger_logstash_backend,
     name: "logger_logstash_backend",
     source_url: "https://github.com/marcelog/logger_logstash_backend",
     version: "0.1.2",
     elixir: "> 1.0.0",
     description: description,
     package: package,
     deps: deps]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:earmark, "~> 0.1", only: :dev},
      {:ex_doc, "~> 0.7", only: :dev},
      {:exjsx, "~> 3.1.0"},
      {:timex, "~> 0.13.4"}
    ]
  end

  defp description do
    """
    Logstash UDP producer backend for Logger.
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      contributors: ["Marcelo Gornstein"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/marcelog/logger_logstash_backend"
      }
    ]
  end
end