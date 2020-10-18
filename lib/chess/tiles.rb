# frozen_string_literal: true

require 'pry'
# Each tiles on the board is an object
class Tiles
  attr_reader :x, :y, :color
  attr_accessor :content

  def initialize(x, y)
    @content = '   '
    @x = x
    @y = y
    @color = nil
  end

  def color_tile(white)
    @color = 'white' if white
    @color = 'black' unless white
  end

  def to_s(content = @content)
    if @color == 'white'
      content.bg_white
    elsif @color == 'black'
      content.bg_black
    end
  end
end
