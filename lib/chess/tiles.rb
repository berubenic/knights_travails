# frozen_string_literal: true

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

  def color_tile(primary)
    @color = 'primary' if primary
    @color = 'secondary' unless primary
  end

  def to_s
    if color == 'primary'
      content.bg_primary
    elsif color == 'secondary'
      content.bg_secondary
    end
  end
end
