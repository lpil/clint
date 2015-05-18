defmodule ClintTest do
  use Clint.TestCase

  defmodule App do
    use Clint
    get "/hello" do
      conn
      |> text "world!"
    end
  end

  should "work. Hooray!" do
    conn = conn( :get, "/hello" ) |> App.call([])
    assert conn.state     == :sent
    assert conn.resp_body == "world!"
    assert conn.status    == 200
  end
end
