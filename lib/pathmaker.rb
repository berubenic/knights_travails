# frozen_string_literal: true

# class pathmaker
class Pathmaker
  attr_reader :starting_knight, :end_coordinate, :order, :path
  def initialize(start_coordinate, end_coordinate)
    @starting_knight = Knight.new(start_coordinate)
    @end_coordinate = end_coordinate
    @order = [starting_knight]
    @path = []
  end

  def build_path
    return make_path if order[0].coordinate == end_coordinate

    current_move = order[0]
    possible_moves = current_move.find_possible_moves(current_move.coordinate)
    possible_moves.each do |move|
      order.push(Knight.new(move, current_move))
    end
    order.shift
    build_path
  end

  private

  def make_path
    current = order[0]
    path.prepend(current)
    until current.previous_move.nil?
      current = current.previous_move
      path.prepend(current)
    end
    print_path
  end

  def print_path
    puts "You made it in #{path.length - 1} moves! Here's your path: \n"
    path.each { |coord| print "#{coord.coordinate} \n" }
  end
end
