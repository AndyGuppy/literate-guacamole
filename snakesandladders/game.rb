require_relative('player')
require_relative('board')

class Game



  attr_accessor :players


  def initialize(names,board)
    @board = board
    @players = Array.new
    names.each { |name| @players << Player.new(name,0)}
  end

  def move_player(player_num,rolled_num)
    player = @players[player_num]
    player.move_player(rolled_num)
    retval = player.position
    num = @board.check_square(player.position)

    player.move_player(num)

    return retval
  end


end