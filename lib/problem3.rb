module Problem3
  module_function

  # Gets whether the value is prime or composite.
  # @param int [Integer] The integer to check.
  # @return [Boolean] True if it is prime, false if it is composite.
  def is_prime?(int)
    (2..Math.sqrt(int)).each do |x|
      return false if int % x == 0
    end
    return true
  end

  # Gets the prime factors of n.
  # @param n [Integer] The number
  # @return [Array<Integer>] An array of all of the prime factors of n.
  def prime_factors(n)
    ret = []
    (2..Math.sqrt(n)).each do |x|
      ret << x if is_prime?(x) && n % x == 0
    end
    ret
  end
end