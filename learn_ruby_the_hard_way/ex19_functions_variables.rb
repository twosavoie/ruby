# defines the method with two arguments
def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "You have #{cheese_count} cheeses!"
  puts "You have #{boxes_of_crackers} boxes of crackers"
  puts "Man that's enough for a party!"
  puts "Get a blanket.\n"
end

# pass arguments 20 & 30 directly to the cheese_and_crackers methodd
puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)

# assign values to variables
puts "OR, we can use variables from out script:"
amount_of_cheese = 10
amount_of_crackers = 50
# that then pass to the cheese_and_crackers method
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

# passes arguments directly to the cheese_and_crackers method after doing math
puts "We can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6)

#after math, pass arguments to the cheese_and_crackers method
puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)

#What if I want to ask the user for the numbers of cheese and crackers?
#You need to use .to_i to convert what you get from gets.chomp.

#Does making the variable amount_of_cheese change the variable cheese_count in the function?
#No, those variables are separate and live outside the function. They are then passed to the function, and temporary versions are made just for the function's run. When the function exits these temporary variables go away and everything keeps working. Keep going in the book, and this should become clearer.
