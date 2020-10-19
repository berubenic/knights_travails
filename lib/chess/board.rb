# frozen_string_literal: true

# Board class
class Board
  attr_reader :rows, :columns, :pieces

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
    @pieces = Pieces.new
  end

  def setup_board
    create_tiles
    prepare_row_for_color
    pieces.create_piece('A', 1, 'knight', 1)
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

  def place_piece_on_board(name, id, x, y)
    piece = pieces.find_piece(name, id)
    tile = find_tile(x, y)
    tile.content = " #{piece.symbol} "
  end

  def move_piece(name, id, new_x, new_y)
    piece = pieces.find_piece(name, id)
    remove_piece_from_tile(piece.x, piece.y)
    pieces.update_new_coordinates(name, id, new_x, new_y)
    place_piece_on_board(name, id, new_x, new_y)
  end

  def remove_piece_from_tile(x, y)
    tile = find_tile(x, y)
    tile.content = '   '
  end

  def find_tile(this_x, this_y)
    rows.each do |y, x|
      if this_y == y
        x.each { |tile| return tile if tile.x == this_x }
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
