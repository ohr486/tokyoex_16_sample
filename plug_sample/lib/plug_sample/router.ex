defmodule PlugSample.Router do
  use Plug.Router
  require Logger

  plug :match
  plug :dispatch

  # function plug
  plug :func_plug

  # module plug
  plug PlugSample.ModulePlug

  get "/" do
    send_resp(conn, 200, "GET /")
  end

  get "/foo" do
    send_resp(conn, 200, "GET /foo")
  end

  match _ do
    send_resp(conn, 404, "Not Found!")
  end

  # Function Plug
  def func_plug(conn, _opts) do
    Logger.info "func_plug called! @ [FunctionPlug][PlugSample.Rotuer]"
    # do something!
    conn
  end
end
