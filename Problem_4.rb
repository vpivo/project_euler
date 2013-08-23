=begin
first, look at how I'm making a comment!

A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.

Lets start by taking a look at what a palindromic number is. 
http://en.wikipedia.org/wiki/Palindromic_number

We want to find a number that:
is the same forward and reversed
is the product of two numbers 
since we want the largest number possible it seems like it makes sense to start at 999 and work our way down 

#we are going to start making smaller methods. The general rule is that 
  if you have to use *and* to describe what a method does, you should break it in multiple methods. 
=end



#http://www.ruby-doc.org/core-2.0/Integer.html#method-i-downto



#define a method to check if it's a palindrome

def is_palindrome(number)
	#why are we converting an interger to a string here?
	#what other method can we use?
	number.to_s == number.to_s.reverse
end

#test it 

puts is_palindrome(9009) == true
puts is_palindrome(1345) == false