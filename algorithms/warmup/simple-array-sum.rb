#!/bin/ruby

=begin
Input Format
The first line contains an integer, N, denoting the size of the array.
The second line contains N space-separated integers representing the array's elements.

Output Format
Print the sum of the array's elements as a single integer.
=end

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

sum = 0
arr.each do |num|
  sum += num
end
puts sum
