# frozen_string_literal: true

# Piece class that keeps track of every piece
class Pieces
  attr_reader :pieces
  def initialize
    @pieces = []
  end

  def create_piece(x, y, name, id)
    pieces << Knight.new(x, y, name, id).piece if name.downcase == 'knight'
  end

  def find_piece(name, id)
    pieces.each do |piece|
      return piece if piece.name == name && piece.id == id
    end
  end
end
