#---
# Excerpted from "Programming Elixir ≥ 1.6",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/elixir16 for more book information.
#---
defmodule Fibonacci do

  def of(n), do: _fib(n, 0, 1)

  def _fib(0, result, _next), do: result
  def _fib(n, result, next),  do: _fib(n-1, next, result+next)

end