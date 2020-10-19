# frozen_string_literal: true

# Piece class that keeps track of every piece
class Pieces
  attr_reader :pieces
  def initialize
    @pieces = []
  end

  def create_piece(x, y, name, id)
    pieces << Knight.new(x, y, name, id) if name.downcase == 'knight'
  end

  def find_piece(name, id)
    pieces.each do |piece|
      return piece if piece.name == name && piece.id == id
    end
  end

  def update_new_coordinates(name, id, x, y)
    piece = find_piece(name, id)
    piece.x = x
    piece.y = y
  end
end
