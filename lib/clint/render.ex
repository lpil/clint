defmodule Clint.Render do

  import Plug.Conn

  def text(conn, body) do
    status = conn.status || 200
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(status, body)
  end

  def html(conn, body) do
    status = conn.status || 200
    conn
    |> put_resp_content_type("text/html")
    |> render(body)
  end

  def eex(conn, template, options \\ []) do
    body = EEx.eval_string(template, options)
    conn
    |> html(body)
  end


  defp render(conn, body) do
    status = conn.status || 200
    conn
    |> send_resp(status, body)
  end
end
