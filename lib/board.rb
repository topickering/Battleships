require_relative 'square'

class Board

  attr_reader :rows

  DEFAULT_SIZE = 4

  def initialize(size = DEFAULT_SIZE, square = Square)
    @size = size
    @square = square
    @rows = set_up
  end

private

  def set_up
    rows = []
    @size.times { rows << row(@size) }
    rows
  end

  def row(size)
    row = []
    size.times { row << @square.new }
    row
  end

end
