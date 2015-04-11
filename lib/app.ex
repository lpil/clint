defmodule App do
  use Clint

  get "/" do
    IO.inspect conn
    send_resp(conn, 200, "Hello world!")
  end
end

# min run -e App.start --no-halt
