defmodule App do
  use Clint

  get "/" do
    conn
    |> text "Hello world!"
  end
end

# min run -e App.start --no-halt
