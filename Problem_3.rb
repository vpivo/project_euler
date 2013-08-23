# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

#What is a prime factor? 
#http://en.wikipedia.org/wiki/Prime_factor

#what is a prime number?
#google this yourself

#Look at fib wiki and this wiki? Is there a pattern? Maybe a formula? 

#Attempt 1 
#brute force

def find_prime_factors(n)
	return n if is_prime?(n) #if a number is prime that's it
	solution = []
	unless solution.inject(:*) == n
		2.upto(n) do |i|
	 	if n % i == 0 && is_prime?(i)
	 		solution << i 
	 	end
	 end
	end
	solution
end

#try starting with primes
def is_prime?(n)
	return true if n == 2 
	return false if n.even? || n <= 1 #less iterations, get rid of things we know to be false
	3.upto(n - 1) do |i| #upto includes the last number, eveything is divisible by itself and one 
		return false if n % i == 0
	end
	true
end

puts find_prime_factors(13195)
# puts is_prime?(3) == true
# puts is_prime?(2) == true
# puts is_prime?(10) == false
# puts is_prime?(30) == false
# puts is_prime?(109) == true
# puts is_prime?(131) == true
# puts is_prime?(223) == true
# puts is_prime?(311) == true
# puts is_prime?(108) == false
# puts is_prime?(210) == false
# puts is_prime?(215) == false
# puts is_prime?(977) == true
# puts is_prime?(244) == false
