defmodule Clint.Template do
  require EEx

  templates_dir = Application.get_env Clint, :templates_dir
  eexs = Path.wildcard("#{templates_dir}/*.eex")

  for eex <- eexs do
    name = eex |> Path.basename(".eex") |> String.to_atom
    EEx.function_from_file( :defp, name, eex, [:assigns] )
    def render(unquote(name), assigns) do
      unquote(name)(assigns)
    end
  end
end
