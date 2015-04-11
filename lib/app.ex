defmodule App do
  use Clint

  get "/" do
    conn
    |> text "Hello world!"
  end

  get "/foo" do
    conn
    |> html "<h2>Hello html world!</h2>"
  end

  get "/foo/:name" do
    conn
    |> eex "<h2>Hello <%= name %>!</h2>", name: name
  end
end

# min run -e App.start --no-halt
