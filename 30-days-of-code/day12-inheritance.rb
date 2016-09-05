class Person
  def initialize(firstName, lastName, id)
    @firstName = firstName
    @lastName = lastName
    @id = id
  end
  def printPerson()
    print("Name: ",@lastName , ", " + @firstName ,"\nID: " , @id)
  end
end
############################Buffer##############################################
class Student < Person
  def initialize(firstName, lastName, id, scores)
    @firstName = firstName
    @lastName = lastName
    @id = id
    @scores = scores
  end

  def calculate
    average = @scores.reduce(:+) / @scores.length.to_f
    if average.between?(90, 100)
      return "O"
    elsif average.between?(80, 89)
      return "E"
    elsif average.between?(70, 79)
      return "A"
    elsif average.between?(55, 69)
      return "P"
    elsif average.between?(40, 54)
      return "D"
    elsif average.between?(0, 39)
      return "T"
    end
  end
end
############################Buffer##############################################
input = gets.split()
firstName = input[0]
lastName = input[1]
id = input[2].to_i
numScores = gets.to_i
scores = gets.strip().split().map!(&:to_i)
s = Student.new(firstName, lastName, id, scores)
s.printPerson
print("\nGrade: " + s.calculate)
