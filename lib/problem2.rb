module Problem2
  module_function

  # Generates an array of integers in the fibonacci sequence until the limit.
  # @param n [Integer] The maximum number to generate.
  # @return [Array<Integer>] An array of all fibonacci numbers until the limit.
  def fib(n)
    a = 0
    b = 1
    ret = []
    while b <= n
      c = a + b
      ret << c if c <= n
      a = b
      b = c
    end

    ret
  end

  # Like #{fib}, but will delete all even numbers.
  # @param n [Integer] See #{fib}.
  # @return [Array<Integer>] See #{fib}. No odd numbers.
  def even_fib(n)
    ary = fib(n)
    ary.delete_if do |x|
      !x.even?
    end
  end
end