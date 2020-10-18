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

  def prepare_row_for_color
    rows.each do |y, x|
      send_odd_row_for_color(x) if y.odd?
      send_even_row_for_color(x) unless y.odd?
    end
  end

  def send_odd_row_for_color(row)
    row.each_with_index do |tile, index|
      if index.odd?
        tile.color_tile(true)
      else
        tile.color_tile(false)
      end
    end
  end

  def send_even_row_for_color(row)
    row.each_with_index do |tile, index|
      if index.odd?
        tile.color_tile(false)
      else
        tile.color_tile(true)
      end
    end
  end

  def print_board
    rows.each do |y, x|
      print "#{y} "
      x.each { |tile| print tile.to_s }
      print "\n"
    end
    print ' '
    columns.each { |letter| print "  #{letter}" }
    print "\n"
  end
end
