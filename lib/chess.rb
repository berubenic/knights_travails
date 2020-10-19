# frozen_string_literal: true

require_relative 'chess/board'
require_relative 'chess/knight'
require_relative 'chess/tiles'
require_relative 'chess/pieces'
require_relative 'string'

# setup board
board = Board.new
board.setup_board

# place knight on board

board.place_piece_on_board('knight', 1, 'A', 1)
board.print_board
