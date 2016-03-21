require 'minitest/autorun'
require_relative '../lib/problem10'

describe 'Problem 10' do
  it 'Gets the sum of all prime numbers below 10' do
    assert_equal(17, Problem10.sum_primes_below(10))
  end

  it 'Gets the sum of all prime numbers below two million' do
    assert_equal(142913828922, Problem10.sum_primes_below(2_000_000))
  end
end