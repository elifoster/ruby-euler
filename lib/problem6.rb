module Problem6
  module_function

  # Gets the sum of the squares of the numbers in the Enumerable.
  # @param enumerable [Enumerable] The range, array, etc. to get the sums of.
  # @return [Integer] The sum of the squares of the numbers.
  def sum_of_the_squares(enumerable)
    enumerable.inject { |x, y| x + y ** 2 }
  end

  # Gets the square of the sum of all the numbers in the Enumerable.
  # @param enumerable [Enumerable] The range, array, etc. to get the squared sum of.
  # @return [Integer] The square of the sum of all the numbers.
  def square_of_the_sum(enumerable)
    enumerable.reduce(:+) ** 2
  end

  # Gets the difference between the sum of the squares and the square of the sum.
  # @param enumerable [Enumerable] See #{sum_of_the_squares}
  # @return [Integer] The difference.
  def square_sum_diff(enumerable)
    square_of_the_sum(enumerable) - sum_of_the_squares(enumerable)
  end
end