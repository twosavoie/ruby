# asks the user for one input and assigns it to the filename variable
filename = ARGV.first
#opens the file and assigns it to the txt variable
txt = open(filename)
#prints to the screen a message including the file name
puts "Here's your file #{filename}:"
#prints the file that was saved to the txt variable after reading it
print txt.read
#asks the user to input the filename again
print "Type the filename again: "
#specific to ARGV: gets the filename from the user, removes the carriage return, assigns the variable
file_again = $stdin.gets.chomp
#opens the file and assigns it to a variable
txt_again = open(file_again)
#reads the file and prints it to the screen
print txt_again.read

#not sure if this is right
txt.close()
txt_again.close()
