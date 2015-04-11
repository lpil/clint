defmodule Clint do

  defmacro __using__(_) do
    quote do
      use Plug.Router

      plug :match
      plug :dispatch

      def start do
        port = System.get_env("PORT") || 4000
        {:ok, _} = Plug.Adapters.Cowboy.http(__MODULE__, [], port: port)
        IO.puts "== The man with no name lights his cigar..."
        IO.puts "Running on http://localhost:#{port}"
      end
    end
  end
end

defmodule App do
  use Clint

  get "/" do
    send_resp(conn, 200, "Hello world!")
  end
end

# min run -e App.start --no-halt
