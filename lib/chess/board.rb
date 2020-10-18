# frozen_string_literal: true

require 'pry'
# Board class
class Board
  attr_reader :rows, :columns

  def initialize
    @columns = %w[A B C D E F G H]
    @rows = {
      8 => [],
      7 => [],
      6 => [],
      5 => [],
      4 => [],
      3 => [],
      2 => [],
      1 => []
    }
  end

  def create_tiles
    rows.each do |y, arr|
      columns.each { |x| arr << Tiles.new(x, y) }
    end
  end

  def color_tiles
    rows.each do |_y, x|
      x.each { |tile| tile.color_tile(true) }
    end
  end

  def print_board
    rows.each do |y, x|
      print y
      x.each { |tile| print tile.content }
      print "\n"
    end
  end
end
