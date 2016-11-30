require ('minitest/autorun')
require('minitest/rg')
require_relative('../dice')

class DiceSpec <MiniTest::Test

  def test_can_create_dice
    dice = Dice.new()
    assert_equal(Dice, dice.class)
  end

  # def test_can_return_dice_roll
  #   dice = Dice.new()

  #   number = dice.roll()
  #     puts number
  #   assert_equal(1,number)
  #   assert_equal(2,number)
  #   assert_equal(3,number)
  #   assert_equal(4,number)
  #   assert_equal(5,number)
  #   assert_equal(6,number)
  # end
end