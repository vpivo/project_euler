#Multiples of 3 and 5
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.
# google natural numbers
# notice it says below 1000, does our range inclue 100 or end at 999?
# what does inject do? Let's Look.
# http://ruby-doc.org/core-2.0/Enumerable.html#method-i-inject
numbers = []

(1...1000).each do |n| 
	if n % 3 == 0 || n % 5 == 0
		numbers << n
	end
	puts numbers.inject(:+)
end
