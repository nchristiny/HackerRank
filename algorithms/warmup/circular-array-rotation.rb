=begin
  Input Format
  The first line contains 3 space-separated integers, n, k, and ,q respectively.
  The second line contains n space-separated integers, where each integer i describes array element ai (where 0 <= i < n).
  Each of the q subsequent lines contains a single integer denoting m.

  Output Format
  For each query, print the value of the element at index m of the rotated array on a new line.
=end
#!/bin/ruby
(n, k, q) = gets.split(" ").map(&:to_i)
elements = gets.split(" ").map(&:to_i)
queries = []
q.times do
  queries << gets.to_i
end

rotations = k % n
part1 = elements.slice(0, n - rotations)
part2 = elements.slice(n - rotations, n)
final_array = part2.concat(part1)

q.times do |i|
  puts final_array[queries[i]]
end
