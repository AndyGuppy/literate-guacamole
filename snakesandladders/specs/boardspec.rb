require ('minitest/autorun')
require('minitest/rg')
require_relative('../board')
require_relative('../player')

class BoardSpec <MiniTest::Test

  def test_board_created
    board=Board.new
    expected = 0
    actual = board.grid[2]
    assert_equal(expected,actual)
    expected = 16
    actual = board.grid[4]
    assert_equal(expected,actual)
  end

  def test_check_board_for_portal
    board=Board.new
    player=Player.new("Graeme",24)
    actual = board.check_square(24)
    expected = -19
    assert_equal(expected,actual)
  end

end