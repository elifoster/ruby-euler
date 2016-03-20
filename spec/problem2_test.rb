require 'minitest/autorun'
require_relative '../lib/problem2'

describe 'Problem 2' do
  it 'Gets the fibonacci sequence until 89' do
    assert_equal([1, 2, 3, 5, 8, 13, 21, 34, 55, 89], Problem2.fib(90))
    assert_equal([2, 8, 34], Problem2.even_fib(90))
  end

  it 'Gets the sum of the fibonacci sequence until 4,000,000' do
    answer = Problem2.even_fib(4000000).inject(:+)
    assert_equal(4613732, answer)
  end
end