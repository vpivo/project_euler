=begin
	
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a2 + b2 = c2
For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
	
  sum = 1000
=end

def right_triangle?(a, b, c)
	squared(a) + squared(b) == squared(c) 
end

def product(a, b, c)
 a * b * c
end

def squared(n)
	n * n
end

def find_pythagorean_triple
  (1..1000).each do |a|
    (1..1000).each do |b|
      c = Math.sqrt(squared(a) + squared(b))  
      if a + b + c == 1000
        puts a 
        puts b
        puts c
        puts product(a, b, c)
      end
    end
  end
end


puts squared(4) == 16
puts right_triangle?(3, 4, 5) == true
puts right_triangle?(6, 8, 10) == true
puts product(3, 4, 5) 
puts product(6, 8, 10) 
puts find_pythagorean_triple
