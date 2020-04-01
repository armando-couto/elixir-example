#---
# Excerpted from "Programming Elixir ≥ 1.6",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/elixir16 for more book information.
#---
defmodule Nospecs.Mixfile do
  use Mix.Project

  def project do
    [
      app:             :nospecs,
      version:         "0.0.1",
      build_embedded:  Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps:            deps()
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      { :dialyxir, "~> 0.5", only: [:dev], runtime: false }
    ]
  end
end
