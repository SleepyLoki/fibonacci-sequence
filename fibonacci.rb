# Solves Fib by using a recursive solution. Problem should involve a function that calls itself!
def iterative_fib(num)
  sequence = []
  (0..num).each do |num|
    if num < 2
      sequence << num
    else
      sequence << sequence[-1] + sequence [-2]
    end
  end
  sequence.last
end

# Builds a table of Fib numbers one-by-one. Returns last value.
def recursive_fib(num)
  return num if num < 2
  return recursive_fib(num - 1) + recursive_fib(num - 2)
end

# puts "fib 35 #{iterative_fib(35)}"
# puts "fib 35 #{recursive_fib(35)}"

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib") { iterative_fib(num) }
end