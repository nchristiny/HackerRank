#!/bin/ruby

a0,a1,a2 = gets.strip.split(' ')
a0 = a0.to_i
a1 = a1.to_i
a2 = a2.to_i
b0,b1,b2 = gets.strip.split(' ')
b0 = b0.to_i
b1 = b1.to_i
b2 = b2.to_i

alice = 0
bob = 0

unless a0 == b0
  a0 > b0 ? alice += 1 : bob += 1
end

unless a1 == b1
  a1 > b1 ? alice += 1 : bob += 1
end

unless a2 == b2
  a2 > b2 ? alice += 1 : bob += 1
end

puts "#{alice} #{bob}"
