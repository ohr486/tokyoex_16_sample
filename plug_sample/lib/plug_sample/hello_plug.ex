# Module Plug
defmodule PlugSample.HelloPlug do
  import Plug.Conn

  require Logger

  def init(opts), do: opts

  def call(conn, _opts) do
    Logger.info "Hello, World! @ [ModulePlug][PlugSample.HelloPlug]"
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "Hello Plug called!\n")
  end
end
