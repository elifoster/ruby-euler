require 'minitest/autorun'
require_relative '../lib/problem1'

describe 'Problem 1' do
  it 'Finds the sum of all the multiples of 3 or 5 below 10.' do
    ary_3 = Problem1.multiples_of_until(3, 10)
    assert_equal([0, 3, 6, 9], ary_3)
    ary_5 = Problem1.remove_duplicates(Problem1.multiples_of_until(5, 10), 3, 5)
    assert_equal([0, 5], ary_5)
    comb = ary_3 + ary_5
    assert_equal(23, comb.inject(:+))
  end

  it 'Finds the sum of all the multiples of 3 or 5 below 1000.' do
    ary_3 = Problem1.multiples_of_until(3, 1000)
    ary_5 = Problem1.remove_duplicates(Problem1.multiples_of_until(5, 1000), 3, 5)
    combined = ary_3 + ary_5
    answer = combined.inject(:+)
    assert_equal(233168, answer)
  end
end