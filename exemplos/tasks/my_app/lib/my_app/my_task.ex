#---
# Excerpted from "Programming Elixir ≥ 1.6",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/elixir16 for more book information.
#---
defmodule MyApp.MyTask do
  use Task

  def start_link(param) do
    Task.start_link(__MODULE__, :thing_to_run, [ param ])
  end

  def thing_to_run(param) do
    IO.puts "running task with #{param}"
  end
end
