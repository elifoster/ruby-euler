require 'minitest/autorun'
require_relative '../lib/problem5'

describe 'Problem 5' do
  it 'Gets the greatest common divisor' do
    assert_equal(4, Problem5.gcd(12, 8))
  end

  it 'Gets the least common multiple' do
    assert_equal(12, Problem5.lcm(3, 4))
    assert_equal(36, Problem5.lcm(12, 18))
  end

  it 'Gets the smallest number that can be divided by each of the numbers without a remainder' do
    assert_equal(2520, (1..10).inject { |x, y| Problem5.lcm(x, y) })
    assert_equal(232792560, (1..20).inject { |x, y| Problem5.lcm(x, y) })
  end
end