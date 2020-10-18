# frozen_string_literal: true

require_relative 'chess/board'
require_relative 'chess/knight'
require_relative 'chess/tiles'
require_relative 'string'

# setup blank board
board = Board.new
board.create_tiles
board.prepare_row_for_color
board.print_board
