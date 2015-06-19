Clint
=====

[![Build Status](https://travis-ci.org/lpil/clint.svg?branch=master)](https://travis-ci.org/lpil/clint)
[![Hex version](https://img.shields.io/hexpm/v/clint.svg "Hex version")](https://hex.pm/packages/clint)
[![Hex downloads](https://img.shields.io/hexpm/dt/clint.svg "Hex downloads")](https://hex.pm/packages/clint)

Clint is an Elixir web micro-framework, inspired by
[Sinatra](http://github.com/sinatra/sinatra), and built on top of
[Plug](http://github.com/elixir-lang/plug) and
[Cowboy](http://github.com/ninenines/cowboy).

Or at least that's the idea. We're not there yet. You probably shouldn't try
using this.

```elixir
defmodule App do
  use Clint

  get "/" do
    conn
    |> text("Hello world!")
  end
end
```
```
mix run -e App.start
```

## Usage

#### Reloading the app on changes

This'll happen, as soon as I work out how Elixir/Erlang code reloading works.

## LICENCE

```
Clint - An Elixir web micro-framework, inspired by Sinatra
Copyright © 2015 Louis Pilfold

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the "Software"),
to deal in the Software without restriction, including without limitation
the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE
OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```
