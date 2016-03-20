module Problem5
  module_function

  # Gets the greatest common divisor of the two numbers.
  # @param a [Integer] The first number
  # @param b [Integer] The second number
  # @return [Integer] The gcd.
  def gcd(a, b)
    return a if b == 0
    gcd(b, a % b)
  end

  # Gets the least common factor of the numbers.
  # @param a [Integer] The first number
  # @param b [Integer] The second number
  # @return [Integer] The lcm
  def lcm(a, b)
    a / gcd(a, b) * b
  end
end