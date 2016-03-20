require 'minitest/autorun'
require_relative '../lib/problem6'

describe 'Problem 6' do
  it 'Gets the sum of the squares' do
    assert_equal(385, Problem6.sum_of_the_squares((1..10)))
  end

  it 'Gets the square of the sum' do
    assert_equal(3025, Problem6.square_of_the_sum((1..10)))
  end

  it 'Gets the difference' do
    assert_equal(25164150, Problem6.square_sum_diff((1..100)))
  end
end