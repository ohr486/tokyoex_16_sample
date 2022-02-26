# Module Plug
defmodule PlugSample.ModulePlug do
  import Plug.Conn

  require Logger

  def init(opts), do: opts

  def call(conn, _opts) do
    Logger.info "module_plug called! @ [ModulePlug][PlugSample.ModulePlug]"
    # do something!
    conn
  end
end
