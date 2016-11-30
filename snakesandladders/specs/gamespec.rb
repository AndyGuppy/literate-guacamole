require ('minitest/autorun')
require('minitest/rg')
require_relative('../game')
require_relative('../player')
require_relative('../dice')


class GameSpec <MiniTest::Test


  def test_game_initialized
    board = Board.new   
    game = Game.new(["bob","jim","sue"],board)
    actual = game.players[2]
    assert_equal(0,actual.position)
    assert_equal("sue",actual.name)
end
 def test_move_player
    board = Board.new
    game = Game.new(["bob","jim","sue"],board)
    dice = Dice.new
 
    rolled_num = dice.roll()
    actual = game.move_player(1,rolled_num)

    expected = game.players[1].position 
    assert_equal(expected,actual)
 end

 

end