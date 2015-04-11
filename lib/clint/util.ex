defmodule Clint.Util do

  defmacro __using__(_) do
    quote do
      def start do
        {:ok, _} = Plug.Adapters.Cowboy.http(__MODULE__, [], port: port)

        IO.puts "== The man with no name lights his cigar...\n" <>
                "Running on http://localhost:#{port}"
      end

      defp iex_running? do
        Code.ensure_loaded?(IEx) && IEx.started?
      end

      defp no_halt do
        unless iex_running? do
          :timer.sleep :infinity
        end
      end

      defp port do
        System.get_env("PORT") || 4000
      end
    end
  end

end
