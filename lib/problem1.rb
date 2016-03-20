module Problem1
  module_function

  # Gets all of the multiples of the number until the limit.
  # @param multiple [Integer] The multiple to get the values for.
  # @param til [Integer] The cap.
  # @return [Array<Integer>] All of the multiples of multiple until til.
  def multiples_of_until(multiple, til)
    i = 0
    ret = []
    while i < til
      ret << i if i % multiple == 0
      i += multiple
    end
    ret
  end

  # Removes the values that are multiples of val1 and val2 from ary.
  # @param ary [Array<Integer>] The array that contains the values.
  # @param val1 [Integer] The first multiple.
  # @param val2 [Integer] The second multiple.
  # @return [Array<Integer>] Modified version of ary.
  def remove_duplicates(ary, val1, val2)
    ary.delete_if do |x|
      x % val1 == 0 && x % val2 == 0 && x != 0
    end
  end
end