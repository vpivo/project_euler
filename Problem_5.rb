=begin 
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

this is pretty straight forward, so let just code it. (so it seems)
=end

i = 40 #why start here?

#what is #all? Check ruby docs
def check_num(i)
	nums = (1..20).to_a
	if nums.all? { |n| i % n == 0 }
		puts i
		i
	end
end

until check_num(i)
	puts i
	i += 20 #again, why?
	check_num(i)
end


