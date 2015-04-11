Clint
=====

Clint is an Elixir web micro-framework, inspired by
[Sinatra](http://github.com/sinatra/sinatra), and built on top of
[Plug](http://github.com/elixir-lang/plug) and
[Cowboy](http://github.com/ninenines/cowboy).

Or at least that's the idea. We're not there yet.

```elixir
defmodule App do
  use Clint

  get "/" do
    send_resp(conn, 200, "Hello world!")
  end
end
```
```
mix run -e App.start --no-halt
```
