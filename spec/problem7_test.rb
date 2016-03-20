require 'minitest/autorun'
require_relative '../lib/problem7'

describe 'Problem 7' do
  it 'Gets the nth prime number' do
    assert_equal(13, Problem7.get_nth_prime(6))
    assert_equal(104743, Problem7.get_nth_prime(10_001))
  end
end