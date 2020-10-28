# frozen_string_literal: true

# class pathmaker
class Pathmaker
  attr_reader :starting_knight
  def initialize(start_coordinate, end_coordinate)
    @starting_knight = Knight.new(start_coordinate)
    @end_coordinate = end_coordinate
  end
end
