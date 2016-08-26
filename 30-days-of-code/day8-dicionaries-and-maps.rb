# Enter your code here. Read input from STDIN. Print output to STDOUT
n = gets.strip.to_i
initial_array = []
phoneBook = {}

# Get initial data
n.times do |i|
    arr = gets.strip
    arr = arr.split(' ')
    initial_array << arr
end

# Organize phoneBook hash
initial_array.map do |i|
    hash = Hash[*i]
    hash.each do |k,v|
        phoneBook[k] = v
    end
end

# Next check all the possible queries given and return appropriate information or error message if not found.
until STDIN.eof? do
  name = gets.chomp
  number = phoneBook[name]
  puts number ? "#{name}=#{number}" : "Not found"
end
