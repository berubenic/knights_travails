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

  def setup_board
    cell = '  '
    first_row = Array.new(8, cell)
    second_row = Array.new(8, cell)
    header = []
    4.times do
      first_row.each_with_index do |c, i|
        if i.odd?
          print c.bg_white
        elsif i.even?
          print c.bg_black
        end
      end
      print "\n"
      second_row.each_with_index do |c, i|
        if i.odd?
          print c.bg_black
        elsif i.even?
          print c.bg_white
        end
      end
      print "\n"
    end
  end
end
