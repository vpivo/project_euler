require './Problem_3.rb'


require 'benchmark'

puts Benchmark.measure {
  sum = 0 
  (1...2000000).each do |i|
    puts i
  	if is_prime?(i)
  		sum = sum + i
  	end
  end
  puts sum
}