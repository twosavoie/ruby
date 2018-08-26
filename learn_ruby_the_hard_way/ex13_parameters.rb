#when running in command line: ruby ex13_parameters.rb first 2nd 3rd or apple orange grapefruit...
first, second, third = ARGV #argument variable

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"



#use instead of gets.chomp when using ARGV (gets.chomp has issues with ARGV):
# $stdin.gets.chomp

#What's the difference between ARGV and gets.chomp?
#The difference has to do with where the user is required to give input. If they give your script inputs on the command line, then you use ARGV. If you want them to input using the keyboard while the script is running, then use gets.chomp.
