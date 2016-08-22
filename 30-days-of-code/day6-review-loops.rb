# Enter your code here. Read input from STDIN. Print output to STDOUT
T = gets.to_i
input_strings = []
1.upto(T) do |s|
  s = gets.chomp
  input_strings << s
end

# Take each member (s) of the given array of strings
input_strings.each do |s|
  even_index = ""
  odd_index = ""
  # Iterate through the individual characters, checking index for even or odd
  for i in (0..s.length - 1) do
    if i % 2 != 0 # i is odd index char
      odd_index << s[i]
    else # i is even index char
      even_index << s[i]
    end
  end
  puts even_index + " " + odd_index
end
