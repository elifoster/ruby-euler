require_relative 'problem3'

module Problem7
  module_function

  # Gets the Nth prime number sequentially.
  # @param nth [Integer] The nth prime number to get
  # @return [Integer] The nth prime number.
  def get_nth_prime(nth)
    ret = []
    i = 2
    until ret.size == nth
      ret << i if Problem3.is_prime?(i)
      i += 1
    end
    ret[nth - 1]
  end
end