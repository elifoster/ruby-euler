module Problem8
  module_function

  # Gets the greatest product of adjacent nth numbers in n.
  # @param n [Integer] The number to scan.
  # @param nth [Integer] The number of adjacent integers.
  # @return [Integer] The greatest product.
  def greatest_adj_product(n, nth)
    max = 0
    str = n.to_s
    (0..str.length).each do |i|
      product = str[i, nth]&.split('').map { |c| c.to_i }.reduce(:*)
      max = product if product && product > max
    end

    max
  end
end