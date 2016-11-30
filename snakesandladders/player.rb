class Player

  attr_reader :name, :position

  def initialize(name,position)
    # @player = Array.new
    # @player << [name,position]
    @name = name
    @position = position
  end

  def move_player(num)
    @position += num
  end

end
