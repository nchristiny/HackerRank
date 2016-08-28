#!/bin/ruby

n = gets.strip.to_i
binary_string = n.to_s(2)
max_ones = 0
arr = binary_string.split('0')

arr.each do |ones|
  if ones.length > max_ones
    max_ones = ones.length
  end
end

puts max_ones
