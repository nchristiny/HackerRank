#!/bin/ruby
=begin
  Write a program that prints a staircase of size n.

  Input Format

  A single integer, n, denoting the size of the staircase.

  Output Format

  Print a staircase of size n using # symbols and spaces.

  Note: The last line must have 0 spaces in it.
=end

n = gets.strip.to_i

(1..n).each do |t|
  spaces = n - t
  puts " " * spaces + "#" * t
end
