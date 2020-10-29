# frozen_string_literal: true

# class knight
class Knight
  attr_reader :coordinate, :previous_move
  def initialize(coordinate, previous_move = nil)
    @coordinate = coordinate
    @previous_move = previous_move
  end

  def find_possible_moves(coordinate)
    possible_moves(coordinate[0], coordinate[1])
  end

  private

  def possible_moves(x, y)
    possibilities = [
      [x + 1, y + 2],
      [x + 1, y - 2],
      [x - 1, y + 2],
      [x - 1, y - 2],
      [x + 2, y + 1],
      [x + 2, y - 1],
      [x - 2, y + 1],
      [x - 2, y - 1]
    ]
    possibilities.keep_if { |coord| with_in_board?(coord) }
  end

  def with_in_board?(coord)
    coord.all? { |num| num >= 0 && num <= 7 }
  end
end
