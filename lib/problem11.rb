module Problem11
  module_function

  # Gets a two-dimensional array from the integer grid string (See spec)
  # @param str [String] The string containing a grid of integers.
  # @return [Array<Array<Integer>>] A two-dimensional array of integers
  def array_from_rows(str)
    str.split("\n").map { |x| x.split(' ').map { |y| y.to_i } }
  end

  # Gets the largest horizontal product in the grid.
  # @param ary [Array<Array<Integer>>] See return value of #{array_from_rows}.
  # @param n [Integer] The number of multipliers.
  # @return [Integer] The largest product.
  def horizontal_largest(ary, n)
    max = 0
    (0...ary.size).each do |row|
      (0...ary[row].size - n).each do |col|
        product = 1
        n.times do |index|
          product *= ary[row][col + index]
        end
        max = product if product > max
      end
    end

    max
  end

  # Gets the largest vertical product in the grid.
  # @param ary [Array<Array<Integer>>] See return value of #{array_from_rows}.
  # @param n [Integer] The number of multipliers.
  # @return [Integer] The largest product.
  def vertical_largest(ary, n)
    max = 0
    (0...ary.size - n).each do |row|
      (0...ary[row].size).each do |col|
        product = 1
        n.times do |index|
          product *= ary[row + index][col]
        end
        max = product if product > max
      end
    end
    max
  end

  # Gets the largest diagonal-right product in the grid.
  # @param ary [Array<Array<Integer>>] See return value of #{array_from_rows}.
  # @param n [Integer] The number of multipliers.
  # @return [Integer] The largest product.
  def diagonal_right_largest(ary, n)
    max = 0
    (0...ary.size - n).each do |row|
      (0...ary[row].size - n).each do |col|
        product = 1
        n.times do |index|
          product *= ary[row + index][col + index]
        end
        max = product if product > max
      end
    end
    max
  end

  # Gets the largest diagonal-left product in the grid.
  # @param ary [Array<Array<Integer>>] See return value of #{array_from_rows}.
  # @param n [Integer] The number of multipliers.
  # @return [Integer] The largest product.
  def diagonal_left_largest(ary, n)
    max = 0
    (0...ary.size - n).each do |row|
      (0...ary[row].size - n).each do |col|
        product = 1
        n.times do |index|
          product *= ary[row + index][col + n - 1 - index]
        end
        max = product if product > max
      end
    end
    max
  end
end