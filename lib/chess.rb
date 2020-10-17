# frozen_string_literal: true

require_relative 'chess/board'
require_relative 'chess/knight'

piece = Knight.new

p piece.knight_moves([1, 1], [2, 3])
