#!/bin/ruby

=begin
You are given an array of integers of size N. You need to print the sum of the
elements in the array, keeping in mind that some of those integers may be quite
large.
=end

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)
sum = 0

arr.each do |a|
  sum += a
end

puts sum

=begin
Note: This challenge is meant to demonstrate in Java or C++ where int data
type must be specified. I found it useful to learn about int data types "long"
and "long long" to handle 64 bits and integers with 12 digits.
However in high level languages this problem appears trivial. Good to know.
=end
