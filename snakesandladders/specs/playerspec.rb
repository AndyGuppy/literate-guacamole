require ('minitest/autorun')
require('minitest/rg')
require_relative('../player')

class PlayerSpec <MiniTest::Test

  def test_can_create_player
    player=Player.new("Graeme",0)
    assert_equal("Graeme",player.name)
  end

  def test_player_can_move
    player=Player.new("Graeme",0)
    expected = player.position + 3
    actual = player.move_player(3)
    assert_equal(expected,actual)

  end
end