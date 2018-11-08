defmodule Lists do
  def len([]), do: 0

  def len([_head | tail]), do: 1 + len(tail)

  def sum([]), do: 0
  def sum([head | tail]), do: 1 + sum(tail)

  def double([]), do: 0
  def double([head | tail]), do: [2 * head | double(tail)]

  def sum_pairs([]), do: []
  def sum_pairs([h1, h2 | t]), do: [h1 + h2 | sum_pairs(t)]

  def even_length?([]), do: true
  def even_length?([_head | tail]), do: !even_length?(tail)
end
