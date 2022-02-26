# Module Plug
defmodule PlugSample.ModulePlug do
  import Plug.Conn

  require Logger

  def init(opts) do
    Logger.info "module_plug#init called @ compile time"
    opts
  end

  def call(conn, _opts) do
    Logger.info "module_plug called! @ [ModulePlug][PlugSample.ModulePlug]"
    # do something!
    conn
  end
end
