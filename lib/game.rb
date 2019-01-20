require_relative 'board'

class Game

  attr_reader :board

  def initialize(board = Board.new)
    @board = board.set_up
    @ships = [ ]
  end

  def add_ship(ship)
    @ships << ship
  end

end
