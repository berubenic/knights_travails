# frozen_string_literal: true

# Board class
class Board
  def intialize
    @height = 8
    @width = 8
  end

  def within?(x, y)
    return true if x >= 1 && x <= 8 && y >= 1 && y <= 8

    false
  end
end
