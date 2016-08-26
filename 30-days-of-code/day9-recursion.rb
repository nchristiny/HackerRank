=begin
Input Format
A single integer, N (the argument to pass to factorial).

Output Format
Print a single integer denoting N!.
=end
# Enter your code here. Read input from STDIN. Print output to STDOUT
n = gets.to_i

def factorial(n)
  unless n <= 1
     n * factorial(n - 1)
  else
    return 1
  end
end

puts factorial(n)
