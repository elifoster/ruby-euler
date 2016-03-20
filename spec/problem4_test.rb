require 'minitest/autorun'
require_relative '../lib/problem4'

describe 'Problem 4' do
  it 'Determines whether a value is a palindrome' do
    assert_equal(true, Problem4.is_palindrome?(9009))
    assert_equal(false, Problem4.is_palindrome?(9001))

    assert_equal(true, Problem4.is_palindrome?('abba'))
    assert_equal(false, Problem4.is_palindrome?('baba'))
  end

  it 'Gets the biggest palindrome based on the multiplier length' do
    assert_equal(9009, Problem4.find_big_drome(2))
    assert_equal(906609, Problem4.find_big_drome(3))
  end
end