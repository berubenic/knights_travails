# frozen_string_literal: true

require_relative 'chess/board'
require_relative 'chess/knight'

piece = Knight.new

piece.possible_moves([1, 1])
