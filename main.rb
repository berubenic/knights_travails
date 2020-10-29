require_relative 'lib/knight'
require_relative 'lib/pathmaker'

def knight_moves(start_coordinate, end_coordinate)
  path = Pathmaker.new(start_coordinate, end_coordinate)
  path.build_possibilities
end

knight_moves([3, 3], [4, 3])
knight_moves([0, 0], [1, 2])
knight_moves([0, 0], [3, 3])
knight_moves([3, 3], [0, 0])