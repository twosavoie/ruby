puts "Ready to go to bed? Please answer Y/N:"
answer = gets.chomp.downcase #needs chomp or the answer is n + something so script stops

while (answer == "n")
  puts "Ready to go to bed? Please answer Y/N:"
  answer = gets.chomp.downcase
end
if (answer == "y")
  puts "About time!"
end
