require_relative 'square'

class Board

  attr_reader :rows

  DEFAULT_SIZE = 4
  ALPHA_TABLE = [
    { letter: 'A', number: 1 },
    { letter: 'B', number: 2 },
    { letter: 'C', number: 3 },
    { letter: 'D', number: 4 }
  ]

  def initialize(size = DEFAULT_SIZE, square = Square)
    @size = size
    @square = square
    @rows = set_up
  end

  def coordinate_parse(string)
    split = string.split(//)
    r = split[0]
    c = split[1].to_i
    { row: r, column: c }
  end

  def find_row(letter)
    letter.upcase!
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
