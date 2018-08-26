# using print so the user's answer is on the same line. note extra space at end
print "How old are you? "
age = gets.chomp
print "How tall are you? "
height = gets.chomp
print "How much do you weigh? "
weight = gets.chomp

puts "So, you're #{age} old, #{height} tall and #{weight} heavy."

#How do I get a number from someone so I can do math?
#That's a little advanced, but try gets.chomp.to_i which says, "Get a string #from the user, chomp off the \n, and convert it to an integer."
