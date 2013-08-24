#we know its working with small numbers but it takes forever to find prime factors of large numbers, what can we cut out of this code? 

#lets hold primes we've already found 

#that still takes forever let's look at finding prime factors again

#it looks like a prime can be no larger than the square root of a number, let's give that a try. 

def find_prime_factors(n)
	return n if is_prime?(n) #if a number is prime that's it
	solution = []
	known_primes = [] #lets hold the prime we find
	unless solution.inject(:*) == n 
		2.upto(Math.sqrt(n).ceil) do |i|
			if 	n % i == 0 && known_primes.include?(i)
				solution << i 
			elsif n % i == 0 && is_prime?(i)
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


#puts find_prime_factors(13195) #check changes with smaller number first
p find_prime_factors(600851475143)

#to consider
#we can still cut from this. Where else can we avoid computations? 