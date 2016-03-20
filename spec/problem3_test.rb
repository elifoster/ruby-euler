require 'minitest/autorun'
require_relative '../lib/problem3'

describe 'Problem 3' do
  it 'Checks some prime and composite numbers' do
    assert_equal(true, Problem3.is_prime?(13))
    assert_equal(true, Problem3.is_prime?(1))
    assert_equal(true, Problem3.is_prime?(2))
    assert_equal(false, Problem3.is_prime?(6))
    assert_equal(false, Problem3.is_prime?(24))
    assert_equal(false, Problem3.is_prime?(100))
  end

  it 'Lists the prime factors of 29' do
    assert_equal([5, 7, 13, 29], Problem3.prime_factors(13195))
    assert_equal(29, Problem3.prime_factors(13195).max)
  end

  it 'Lists the prime factors of 600851475143' do
    primes = Problem3.prime_factors(600851475143)
    assert_equal([71, 839, 1471, 6857], primes)
    assert_equal(6857, primes.max)
  end
end