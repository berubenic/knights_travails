# frozen_string_literal: true

# Move checker class, builds tree with possible moves
class Move
  def initialize(coord)
    @coord = coord
    @possible_moves = nil
  end
end
