defmodule Clint do

  defmacro __using__(_) do
    quote do
      use Plug.Router
      use Plug.ErrorHandler

      if Mix.env == :dev do
        use Plug.Debugger
      end

      plug :match
      plug :dispatch

      if Mix.env == :dev do
        plug Clint.Logger
      end

      def start do
        port = System.get_env("PORT") || 4000
        {:ok, _} = Plug.Adapters.Cowboy.http(__MODULE__, [], port: port)
        IO.puts "== The man with no name lights his cigar..."
        IO.puts "Running on http://localhost:#{port}"
      end

      @doc """
      Can be overridden in the App module to allow the developer to show their
      own custom error page
      """
      defp handle_errors(conn, %{kind: _, reason: _, stack: _}) do
        send_resp(conn, conn.status, "Something went wrong!")
      end

      defoverridable handle_errors: 2
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
