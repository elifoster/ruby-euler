require 'minitest/autorun'
require_relative '../lib/problem9'

describe 'Problem 9' do
  it 'Gets the product' do
    trip_twelve = Problem9.find_triplet(12)
    assert_equal(Triplet.new(3, 4, 5), trip_twelve)
    product = trip_twelve.to_a.reduce(:*)
    assert_equal(3 * 4 * 5, product)

    trip_thou = Problem9.find_triplet(1000)
    assert_equal(Triplet.new(200, 375, 425), trip_thou)
    product = trip_thou.to_a.reduce(:*)
    assert_equal(200 * 375 * 425, product)
  end
end