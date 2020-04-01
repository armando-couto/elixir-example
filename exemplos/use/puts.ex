#---
# Excerpted from "Programming Elixir ≥ 1.6",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/elixir16 for more book information.
#---
defmodule Tracer do
  
  def args(arg_list) do
    (for arg <- arg_list, do: (inspect(arg))) |> Enum.join(", ")
  end

  def function_definition(name, arg_list) do
    "#{name}(#{args(arg_list)})"
  end

  def call_seq(name, args) do
    function_definition(name, args)
  end

  def log(prefix, msg, param) do
    IO.ANSI.escape("%{cyan}#{prefix} %{green}#{msg} %{yellow}#{param}") |> IO.puts
  end

  defmacro def(definition = {name, _meta, args}, do: contents) do
    quote do
      Kernel.def unquote(definition) do
        Tracer.log "==>", "call   ", Tracer.call_seq(unquote(name), unquote(args))
        result = unquote(contents)
        Tracer.log "<==", "returns", inspect(result)
        result
      end
    end
  end

  defmacro __using__(_opts) do
    quote do
      require unquote(__MODULE__)
      import Kernel, except: [def: 2]
      import unquote(__MODULE__), only: [def: 2]
    end
  end

end


defmodule Test do
  use Tracer

  def add_three(a,b,c), do: 99 #a + b + c
  
  def add_list(list), do: Enum.reduce(list, 0, &(&1+&2))

end

Test.add_three(1,2,3)
Test.add_list([5,6,7,8])