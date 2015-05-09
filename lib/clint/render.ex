defmodule Clint.Render do

  import Plug.Conn

  def text(conn, body) do
    conn
    |> put_resp_content_type("text/plain")
    |> resp(body)
  end

  def html(conn, body) do
    conn
    |> put_resp_content_type("text/html")
    |> resp(body)
  end

  def template(conn, template, options \\ []) do
    body = Clint.Template.render(template, options)
    conn
    |> html(body)
  end


  defp resp(conn, body) do
    status = conn.status || 200
    conn
    |> send_resp(status, body)
  end
end
