require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/game.rb'

class TestGame < Minitest::Test

  def test_game
    @game = Game.new('rock')
    assert_send([
      @game.play(),
      :include?,
      "You played rock"
      ])
  end

end
