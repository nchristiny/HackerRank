=begin
Input Format

There are 3 lines of numeric input:
The first line has a double, mealCost (the cost of the meal before tax and tip).
The second line has an integer, tipPercent (the percentage of mealCost being
added as tip).
The third line has an integer, taxPercent (the percentage of mealCost being
added as tax).

Output Format

Print The total meal cost is totalCost dollars., where totalCost is the rounded
integer result of the entire bill ( with added tax and tip).
=end

# Enter your code here. Read input from STDIN. Print output to STDOUT
mealCost = gets.strip.to_f
tipPercent = gets.strip.to_i
taxPercent = gets.strip.to_i

tip = mealCost * (tipPercent.to_f/100)
tax = mealCost * (taxPercent.to_f/100)
totalRawCost = (mealCost + tip + tax).to_f
totalCost = totalRawCost.round
puts "The total meal cost is #{totalCost} dollars."
