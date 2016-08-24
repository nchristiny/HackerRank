#!/bin/ruby

=begin
Given an array, A, of N integers, print A's elements in reverse order as a single line of space-separated numbers.

Input Format
The first line contains an integer, N (the size of our array).
The second line contains N space-separated integers describing array A's elements.

Output Format
Print the elements of array  in reverse order as a single line of space-separated numbers.
=end

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

arr.reverse.map do |a|
    print a.to_s + " "
end
