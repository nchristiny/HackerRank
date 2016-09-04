=begin
Input Format
There are 6 lines of input, where each line contains 6 space-separated integers describing 2D Array A; every value in A will be in the inclusive range of -9 to 9.
Output Format
Print the largest (maximum) hourglass sum found in A.
=end

#!/bin/ruby

arr = Array.new(6)
for arr_i in (0..6-1)
  arr_t = gets.strip
  arr[arr_i] = arr_t.split(' ').map(&:to_i)
end
# arr is our 2-D array, we shall take all the the "hourglass sums" into array and find the largest.
sum = []
arr.each_with_index do |row, i|
  if i < 4
    row.each_with_index do |cell, j|
      if j < 4
        sum << arr[i][j] + arr[i][j + 1] + arr[i][j + 2] + arr[i + 1][j +1] + arr[i + 2][j] + arr[i + 2][j + 1] + arr[i + 2][j + 2]
      end
    end
  end
end
puts sum.max
