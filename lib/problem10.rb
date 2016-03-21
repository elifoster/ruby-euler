require_relative 'problem3'

module Problem10
  module_function

  # Gets the sum of all prime numbers below n
  # @param n [Integer] The cap
  # @return [Integer] The sum of all the primes.
  def sum_primes_below(n)
    sum = 0
    2.upto(n) do |i|
      sum += i if Problem3.is_prime?(i)
    end
    sum
  end
end