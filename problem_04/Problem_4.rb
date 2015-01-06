=begin
While the assumuption that starting at 999 and working out way down was good, 
it didn't quite work the way we wanted. a maybe have been 999 the entire time, but b could have 7. 
Lets try holding all the palindromes and seeing what we get. 
=end



def largest_product 
	palindromes = []
	999.downto(100).each do |a|
		999.downto(100).each do |b|
			c = a * b 
			palindromes << c if is_palindrome(c)
		end
	end
	 largest_palindrome(palindromes)
end

def largest_palindrome(p)
	p.sort.reverse.first
end

def is_palindrome(number)
	number.to_s == number.to_s.reverse
end

puts largest_product


