ExUnit.start(formatters: [ShouldI.CLIFormatter])


defmodule Clint.TestCase do
  use ExUnit.CaseTemplate
  using do
    quote do
      use Plug.Test
      use ShouldI
      import ShouldI.Matchers.Plug
      import ShouldI.Matchers.Context
    end
  end
end
