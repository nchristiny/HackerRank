#!/bin/ruby

=begin
  Input Format

  A single integer, N.

  Output Format

  Print 10 lines of output; each line i (where 1 <= i <= 10) contains the result of N x i in the form:
  N x i = result.
=end

N = gets.strip.to_i
1.upto(10) do |i|
  puts "#{N} x #{i} = #{(N * i)}"
end
