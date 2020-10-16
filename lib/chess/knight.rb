# frozen_string_literal: true

require 'pry'
# Knight class
class Knight
  def initialize
    @x = 1
    @y = 1
  end

  def possible_moves(start, last, count = 0)
    result = []

    x = start[0]
    y = start[-1]
    possibilities = [[x + 1, y - 2], [x + 1, y + 2], [x + 2, y - 1], [x + 2, y + 1], [x - 1, y - 2], [x - 1, y + 2], [x - 2, y - 1], [x - 2, y + 1]]

    queue = []
    queue << start

    possibilities.each { |arr| queue << arr if within?(arr) } until result == last

    next_move.each { |_arr| possible_moves(start, last, count + 1, next_move) }
  end

  def within?(arr)
    x = arr[0]
    y = arr[-1]
    return true if x >= 1 && x <= 8 && y >= 1 && y <= 8

    false
  end
end
