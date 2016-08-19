#!/bin/ruby

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

number_of_positive_integers = 0
number_of_negative_integers = 0
number_of_zeroes = 0

arr.each do |i|
  if (i > 0)
    number_of_positive_integers += 1
  elsif (i < 0)
    number_of_negative_integers += 1
  else
    number_of_zeroes += 1
  end
end

# Using Kernel#sprinf - http://ruby-doc.org/core-2.2.0/Kernel.html#method-i-sprintf
# And this useful article http://batsov.com/articles/2013/06/27/the-elements-of-style-in-ruby-number-2-favor-sprintf-format-over-string-number-percent/
puts "%0.6f" % (number_of_positive_integers.to_f / arr.length)
puts "%0.6f" % (number_of_negative_integers.to_f / arr.length)
puts "%0.6f" % (number_of_zeroes.to_f / arr.length)
