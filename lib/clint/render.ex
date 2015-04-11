defmodule Clint.Render do

  import Plug.Conn

  defmacro __using__(_) do
    quote do
      import Clint.Render, only: [text: 2]
    end
  end

  def text(conn, content) do
    status = conn.status || 200
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(status, content)
  end
end
