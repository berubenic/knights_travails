# frozen_string_literal: true

require_relative 'chess/board'
require_relative 'chess/knight'
require_relative 'chess/tiles'
require_relative 'string'

# setup blank board
board = Board.new
board.setup_blank_board

# place knight on board

board.place_piece_on_board('knight', 'A', 1)
board.print_board
