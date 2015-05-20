defmodule RouterTest do
  use Clint.TestCase

  defmodule App do
    use Clint
    get     "/", do: conn |> text "got"
    put     "/", do: conn |> text "putted"
    patch   "/", do: conn |> text "patched"
    post    "/", do: conn |> text "posted"
    delete  "/", do: conn |> text "deleted"
    options "/", do: conn |> text "optioned"
  end

  @opts App.init([])


  should "get" do
    conn = conn( :get, "/" ) |> App.call(@opts)
    assert conn.resp_body == "got"
  end
  
  should "put" do
    conn = conn( :put, "/" ) |> App.call(@opts)
    assert conn.resp_body == "putted"
  end

  should "patch" do
    conn = conn( :patch, "/" ) |> App.call(@opts)
    assert conn.resp_body == "patched"
  end

  should "post" do
    conn = conn( :post, "/" ) |> App.call(@opts)
    assert conn.resp_body == "posted"
  end

  should "delete" do
    conn = conn( :delete, "/" ) |> App.call(@opts)
    assert conn.resp_body == "deleted"
  end

  should "options" do
    conn = conn( :options, "/" ) |> App.call(@opts)
    assert conn.resp_body == "optioned"
  end
end
