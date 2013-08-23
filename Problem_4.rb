#now we are going to defind a method that starts at 999 and checks for palindromes using downto
#http://www.ruby-doc.org/core-2.0/Integer.html#method-i-downto

def largest_product 
	999.downto(100).each do |a|
		999.downto(100).each do |b|
	c = a * b
	return c if is_palindrome(c) 
		end
	end
end

def is_palindrome(number)
	#why are we converting an interger to a string here?
	#what other method can we use?
	number.to_s == number.to_s.reverse
end

puts largest_product

# we get an answer, but it's not right. 580085 is a palindrome, 
# and it's the closest one to a * b
