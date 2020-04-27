defmodule Exercicios do
  @moduledoc """
  Documentation for `Exercicios`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Exercicios.hello()
      :world

  """
  def json do
    Jason.encode!(%{"age" => 44, "name" => "Steve Irwin", "nationality" => "Australian"})
    "{\"age\":44,\"name\":\"Steve Irwin\",\"nationality\":\"Australian\"}"
  end

end

IO.puts(Exercicios.json())