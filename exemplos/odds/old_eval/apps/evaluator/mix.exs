#---
# Excerpted from "Programming Elixir ≥ 1.6",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/elixir16 for more book information.
#---
defmodule Evaluator.Mixfile do
  use Mix.Project

  def project do
    [
      app: :evaluator,
      version: "0.0.1",
      deps: deps(Mix.env)
    ]
  end

  # Configuration for the OTP application
  def application do
    [ ]
  end

  defp deps(:test) do
     [ { :line_sigil, path: "../line_sigil" } ] ++ deps(:default)
  end

  defp deps(_) do
    []
  end
end
