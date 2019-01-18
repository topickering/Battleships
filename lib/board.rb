require_relative 'square'

class Board

  attr_reader :rows

  DEFAULT_SIZE = 4
  ALPHA_TABLE = [
    { letter: 'a', number: 1 },
    { letter: 'b', number: 2 },
    { letter: 'c', number: 3 },
    { letter: 'd', number: 4 }
  ]

  def initialize(size = DEFAULT_SIZE, square = Square)
    @size = size
    @square = square
    @rows = set_up
  end

  def find_row(letter)
    letter.downcase!
    row = make_integer(letter)
    return @rows[row - 1]
  end

  def find_column(number)
    number - 1
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

  def make_integer(letter)
    number = 0
    ALPHA_TABLE.each { |h|
      if h[:letter] == letter
        number = h[:number]
      end
    }
    return number
  end

end
