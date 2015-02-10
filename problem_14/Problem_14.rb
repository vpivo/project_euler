=begin
The following iterative sequence is defined for the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:

13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.
=end

def even(n)
  n / 2
end

def odd(n)
  (3 * n) + 1
end

def generate_sequence(n)
  sequence = []
  until n == 1
    if n.even?
      n = even(n) 
    else
      n = odd(n) 
    end
    sequence.push(n)
  end
  sequence.length
end

def find_longest_sequence
  starting_number = 0
  length = 0
  999999.downto(500000).each do |n|
    len = generate_sequence(n)
    if len > length
      length = len
      starting_number = n
    end
  end
  starting_number
end

p find_longest_sequence
