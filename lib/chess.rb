# frozen_string_literal: true

require_relative 'chess/board'
require_relative 'chess/knight'
require_relative 'chess/tiles'
require_relative 'chess/pieces'
require_relative 'string'

# setup blank board
board = Board.new
board.setup_blank_board

# Create pieces(knight only for now)
pieces = Pieces.new
pieces.create_piece('A', 1, 'knight', 1)
# place knight on board

board.place_piece_on_board(pieces.pieces[0], 'A', 1)
board.print_board
