require_relative 'square'

class Board

  attr_reader :size, :squares

  DEFAULT_SIZE = 4

  def initialize(size = DEFAULT_SIZE, square = Square)
    @size = size
    @squares = []
    @square = square
  end

  def set_up
    @size.times { @squares << row(@size) }
    self
  end

private

  def row(size)
    row = []
    size.times { row << @square.new }
    row
  end

end
