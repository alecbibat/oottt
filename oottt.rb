
class Board

  def initialize
    @data = {}
    (1..9).each {|position| @data[position] = Square.new(' ')}
  end

  def draw
    puts 'Drawing board...'
    puts @data.inspect
  end

  def all_squares_marked?
    # are all squares marked? returns true or false
    empty_squares.size == 0
  end

  def empty_squares
    @data.select{|_, square| square.value == ' '}.values
  end

  def mark_square(position, marker)
    @data[position].mark(marker)
  end

end

class Square
  attr_accessor :value

  def initialize(value)
    @value = value
  end

  def mark(marker)
    @value = marker
  end
end

board = Board.new()

board.draw