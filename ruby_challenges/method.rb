def my_first_method
  puts "This is my first method!"
end
my_first_method

def add_twos
  puts (2 + 2)
end
add_twos

# refactored as a method
def add_twos(num1, num2)
  number = (num1 + num2)
  puts number
end
add_twos(2, 2)

#sk solution
def my_math_method
    number = 2 + 2
    puts number
end
my_math_method

#always_threes refactored to be a method
def always_threes
  puts "Give me a number"
  number = gets.to_i
  puts "Always " + (((number + 5) * 2 - 4) / 2 - number).to_s + "!"
end
  always_threes

  # Always 3 Ruby script SK solution
  def always_three
      # ask the user for a number
      puts "Give me a number"
      # get the user's number with gets & use to_i to convert to an integer
      # set to a variable
      first_number = gets.to_i
      # math and puts on one line!
      puts 'Always ' + (((first_number + 5) * 2 - 4) / 2 - first_number).to_s
  end
  always_three
