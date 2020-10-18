# frozen_string_literal: true

require 'pry'
# Knight class
class Knight
  attr_reader :piece

  def initialize(x, y)
    @piece = "\u{265E}"
    @x = x
    @y = y
  end

  def place_piece_on_board(x, y); end

  def knight_moves(start, finish, count = 0, moves = [])
    possible_moves(start).each_value do |value|
      if value == finish
        count += 1
        moves << value
      end
    end
    print_result(count, moves)
  end

  def print_result(count, moves)
    if count <= 1
      puts "You made it in #{count} move! Here's your path: \n"
    else
      puts "You made it in #{count} moves! Here's your path: \n"
    end

    moves.each { |move| print "#{move}\n" }
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
