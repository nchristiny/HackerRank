#!/bin/ruby

# Given a square matrix of size N x N, calculate the absolute difference between the sums of its diagonals.

n = gets.strip.to_i
a = Array.new(n)
for a_i in (0..n-1)
    a_t = gets.strip
    a[a_i] = a_t.split(' ').map(&:to_i)
end

=begin
a is 2-D nested array, illustrated below with indexes in parenthesis: elem(j,k)
[
  [ a(0,0),b(0,1),c(0,2) ],
  [ d(1,0),e(1,1),f(1,2) ],
  [ g(2,0),h(2,1),i(2,2) ]
]
left_diagonal value given by sum up elements where
j == k
right_diagonal value given by sum of elements where
j == (length of array - 1) - k
=end

left_diagonal = 0
right_diagonal = 0

a.each_with_index do |row, j|
  row.each_with_index do |elem, k|
    if j == k
      left_diagonal += elem
    end
    if j == (a.length - 1) - k
      right_diagonal += elem
    end
  end
end

puts (right_diagonal - left_diagonal).abs
