# frozen_string_literal: true

# Knight class
class Knight
  attr_reader :symbol, :name, :id
  attr_accessor :x, :y

  def initialize(x, y, name, id)
    @symbol = "\u{265E}"
    @name = name
    @id = id
    @x = x
    @y = y
  end

  def move_valid?(new_x, new_y)
    move = [new_x, new_y]
    possibilities = assign_possibilities
    possibilities.value?(move)
  end

  def assign_possibilities
    arr_x = %w[A B C D E F G H]
    index = arr_x.index(x)
    {
      first: [arr_x[validate_index(index + 1)], y - 2],
      second: [arr_x[validate_index(index - 1)], y - 2],
      third: [arr_x[validate_index(index + 1)], y + 2],
      fourth: [arr_x[validate_index(index - 1)], y + 2],
      fifth: [arr_x[validate_index(index + 2)], y - 1],
      sixth: [arr_x[validate_index(index - 2)], y - 1],
      seventh: [arr_x[validate_index(index + 2)], y + 1],
      eight: [arr_x[validate_index(index - 2)], y + 1]
    }
  end

  def validate_index(result)
    return 8 if result.negative? || result > 7

    result
  end

  # def assign_possibilities
  #  {
  #    first: [x + 1, y - 2],
  #    second: [x - 1, y - 2],
  #    third: [x + 1, y + 2],
  #    fourth: [x - 1, y + 2],
  #    fifth: [x + 2, y - 1],
  #    sixth: [x - 2, y - 1],
  #    seventh: [x + 2, y + 1],
  #    eight: [x - 2, y + 1]
  #  }
  # end
end
