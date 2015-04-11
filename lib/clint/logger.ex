defmodule Clint.Logger do
  import Plug.Conn

  def init(options) do
    options
  end

  def call(conn, _opts) do
    path = Enum.join conn.path_info, "/"
    IO.puts "[#{ now }] #{ conn.method } /#{ path }"
    conn
  end

  defp now do
    {_, {h, m, s}} = :calendar.local_time
    "#{ h }:#{ m }:#{ s }"
  end
end
