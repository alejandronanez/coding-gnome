defmodule GameTest do
  use ExUnit.Case
  alias Hangman.Game

  test "new_game returns the right initial structure" do
    game = Game.new_game()

    assert game.turns_left == 7
    assert game.game_state == :initializing
    assert length(game.letters) > 0
  end

  test "new_game should return only lower case letters [a-z]" do
    game = Game.new_game()

    result = game.letters |> Enum.all?(fn x -> x == String.downcase(x) end)

    assert result == true
  end

  test "should return the same game if its state is :won or :lost" do
    for state <- [:won, :lost] do
      game = Game.new_game() |> Map.put(:game_state, state)

      assert {^game, _} = Game.make_move(game, "foo")
    end
  end
end
