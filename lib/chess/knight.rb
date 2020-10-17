# frozen_string_literal: true

require 'pry'
# Knight class
class Knight
  def initialize
    @x = 1
    @y = 1
  end

  def knight_moves(start, _finish)
    possible_moves(start)
  end

  def possible_moves(start)
    x = start[0]
    y = start[-1]
    possibilities = assign_possibilities(x, y)
    possibilities.delete_if { |_key, value| true unless within?(value) }
    possibilities
  end

  def assign_possibilities(x, y)
    {
      first: [x + 1, y - 2],
      second: [x - 1, y - 2],
      third: [x + 1, y + 2],
      fourth: [x - 1, y + 2],
      fifth: [x + 2, y - 1],
      sixth: [x - 2, y - 1],
      seventh: [x + 2, y + 1],
      eight: [x - 2, y + 1]
    }
  end

  def within?(arr)
    x = arr[0]
    y = arr[-1]
    return true if x >= 1 && x <= 8 && y >= 1 && y <= 8

    false
  end
end
