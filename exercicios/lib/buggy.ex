defmodule Buggy do
  def parse_header(
        <<
          format :: integer - 16,
          tracks :: integer - 16,
          division :: integer - 16
        >>
      ) do

    require IEx;
    IEx.pry
    IO.puts "format: #{format}"
    IO.puts "tracks: #{tracks}"
    IO.puts "division: #{decode(division)}"
  end

  def decode(<<1 :: 1, beats :: 15>>) do
    "♩ = #{beats}"
  end

  def decode(<<0 :: 1, fps :: 7, beats :: 8>>) do
    "#{-fps} fps, #{beats}/frame"
  end

end

# Abra o terminal e execute:
# iex -S mix
# Buggy.parse_header <<0, 1, 0, 8, 0, 120>>
# Depois ele abre o pry e podemos olhar as variaveis.
# pry(1)> binding
# Ou continuar:
# pry(2)> continue()
