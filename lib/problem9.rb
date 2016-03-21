require 'data_types/triplet'

module Problem9
  module_function

  # Finds the Pythagorean triplet.
  # @param sum [Integer] The sum (a + b + c)
  # @return [Integer] The product
  def find_triplet(sum)
    (1..sum).each do |a|
      (1..sum).each do |b|
        c = sum - a - b
        return Triplet.new(a, b, c) if a ** 2 + b ** 2 == c ** 2
      end
    end

    return Triplet.new(0, 0, 0)
  end
end