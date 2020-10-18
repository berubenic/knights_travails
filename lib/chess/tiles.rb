# frozen_string_literal: true

# Each tiles on the board is an object
class Tiles
  attr_reader :x, :y
  attr_accessor :content

  def initialize(x, y)
    @content = '   '
    @x = x
    @y = y
  end

  def color_tile(white)
    @content = '   '.bg_white if white
    @content = '   '.bg_black unless white
  end

  # def inspect
  #  "Content: #{content} - Coord: #{x}#{y}}"
  # end
end
