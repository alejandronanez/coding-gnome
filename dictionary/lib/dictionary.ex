defmodule Dictionary do
  def word_list do
    "../assets/words.txt"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> String.split(~r/\n/)
  end

  def random_word() do
    word_list()
    |> Enum.random()
  end

  def swapper({x, y}) do
    {y, x}
  end

  def same?(a, a), do: true
  def same?(_, _), do: false
end
