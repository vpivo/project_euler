=begin 
We solved it but it took forever. Let's look at how to find common divisors
and the first search result
https://www.khanacademy.org/math/arithmetic/factors-multiples/prime_factorization/v/common-divisibility-examples
We don't really need code for this, but let's write it out, we can even reuse old code. We may find this useful in the future. 
So let's find the unique prime factors.
=end

#what do we want to do
# find the first prime of n
# s << n 
# n = n / first prime

# repeat s.inject == n

def return_primes(n)
	k = n
	solution = []
	until solution.inject(:*) == n 
		f = first_prime(k)
		solution << f
		k = k/f
	end
solution
end


def first_prime(n)
	return n if is_prime?(n) || n <= 1
	2.upto((Math.sqrt(n).ceil)) do |i|
		if n % i == 0 && is_prime?(i)
			return i
		end
	end
end

def is_prime?(n)
	return true if n == 2 
	return false if n.even? || n <= 1 
	3.upto(n - 1) do |i| 
		return false if n % i == 0
	end
	true
end

def find_largest(n)
	primes = []
	(2..n).to_a.each do |i|
		j = return_primes(i)
		j.each do |c|
			(j.count(c) - primes.count(c)).times do 
				primes << c
			end
		end
	end
	primes.inject(:*)
end

puts find_largest(20)


#refactor 1-10 after 10