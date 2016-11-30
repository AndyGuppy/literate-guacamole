class Board
  attr_reader :grid

  def initialize
    @grid=Array.new

  #generate empty board
    num = 0
    25.times do
      num += 1
      @grid[num] = 0
    end
  #add snakes to board
  grid[14] = -5  
  grid[24] = -19

  #add ladders to board
  grid[4] = 16
  grid[8] = 11

  end

def check_square(location)
  return @grid[location]
end
end