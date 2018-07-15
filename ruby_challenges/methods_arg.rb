# refactored as a method with arguments
def add_method(num1, num2)
  number = (num1 + num2)
  puts number
end
add_method(2, 2)
add_method(8, 222)
add_method(7482, 1983)

#always_threes refactored to be a method with arguments see SK solution below
puts "Give me a number"
user_number = gets.to_i

def always_threes(user_number)
  number = (((user_number + 5) * 2 - 4) / 2 - user_number).to_s
  puts "Always #{number}!"
end
  always_threes(8)

  # Always 3 Ruby script SK solution

# our method accepts the user's number as an argument,
# does some math,
# and returns the result
def always_three(number)
    # math and puts on one line!
    (((number + 5) * 2 - 4) / 2 - number)
end

# ask the user for a number
puts "Give me a number"

# get the user's number with gets & use to_i to convert to an integer
# set to a variable
first_number = gets.to_i
#my note: method is called with puts. I didn't supply the 8...
puts "Always " + always_three(first_number).to_s
#run always_three method. the argument is first_number. User is asked for a number, gets & variable named first_number (which feeds back into puts string). always_three method runs, math is done, Is this right?
