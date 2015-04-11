defmodule Clint do

  defmacro __using__(_) do
    quote do
      use Clint.Util

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

      @doc """
      Can be overridden in the App module to allow the developer to show their
      own custom error page
      """
      def handle_errors(conn, %{kind: _, reason: _, stack: _}) do
        send_resp(conn, conn.status, "Something went wrong!")
      end

      defoverridable handle_errors: 2
    end
  end

end
