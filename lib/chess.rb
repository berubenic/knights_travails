# frozen_string_literal: true

require_relative 'chess/board'
require_relative 'chess/knight'
require_relative 'chess/tiles'
require_relative 'string'

board = Board.new
board.create_tiles
board.color_tiles
board.print_board
