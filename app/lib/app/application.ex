defmodule App.Application do
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      {
        Plug.Cowboy,
        scheme: :http,
        plug: App.Router,
        options: [
          port: Application.get_env(:app, :port),
        ]
      }
    ]

    opts = [strategy: :one_for_one, name: App.Supervisor]

    IO.puts "Starting link"

    Supervisor.start_link(children, opts)
  end
end
