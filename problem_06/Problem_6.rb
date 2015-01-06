def sum_of_squares(n)
	squares = (1..n).collect { |n| n * n}
	squares.inject(:+)
end


def square_of_sum(n)
	sum = (1..n).to_a.inject(:+)
	sum * sum
end

def difference(n)
	sum_of_squares(n) - square_of_sum(n)
end

puts difference(100)



