require_relative 'board'

class Game

  attr_reader :board, :ships

  def initialize(board = Board.new)
    @board = board
    @ships = [ ]
  end

  def add_ship(ship)
    fail 'Navy at capacity' if is_full?

    @ships << ship
  end

private

  def is_full?
    @ships.length >= 2
  end

end
