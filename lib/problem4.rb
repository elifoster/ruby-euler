module Problem4
  module_function

  # Determines whether the given value is a palindrome.
  # @param a [Object] The object to check.
  # @return [Boolean] Whether it is a palindrome.
  def is_palindrome?(a)
    a.to_s == a.to_s.reverse
  end

  def find_big_drome(int_len)
    fin = '9'
    start = '1'
    i = 0
    while i < int_len - 1 do
      fin << '9'
      start << '0'
      i += 1
    end

    max = 0
    (start.to_i..fin.to_i).each do |x|
      (x..fin.to_i).each do |y|
        product = x * y
        max = product if is_palindrome?(product) && product > max
      end
    end
    max
  end
end