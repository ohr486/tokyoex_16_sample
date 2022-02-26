defmodule PlugSample.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application
  require Logger

  @impl true
  def start(_type, _args) do
    children = [
      # Plugを直接指定して呼び出し
      #{Plug.Cowboy, scheme: :http, plug: PlugSample.HelloPlug, options: [port: 8080]}

      # PlugをRouter経由で呼び出し
      {Plug.Cowboy, scheme: :http, plug: PlugSample.Router, options: [port: 8080]}
    ]
    opts = [strategy: :one_for_one, name: PlugSample.Supervisor]

    Logger.info "Start App ..."

    Supervisor.start_link(children, opts)
  end
end
