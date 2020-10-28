require_relative 'lib/knight'
require_relative 'lib/pathmaker'

path = Pathmaker.new([0, 0], [3, 3])

print path.starting_knight.find_possible_moves([1, 2])
