class Dice

  def initialize
    @num = 0
  end

  def roll
    return @num = 1 + rand(6)
  end

end