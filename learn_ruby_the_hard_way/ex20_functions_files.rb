# to do this exercise, I re-ran ex16 to put the correct content in the file. It had been overwritten by ex17 thus creating an error

# variable with a single argument given in the command line
input_file = ARGV.first

# method the parameter passed is file (f) which is read
def print_all(f)
  puts f.read
end

# sets the seek to 0, otherwise would be at the end of the file
def rewind(f)
  f.seek(0)
end

# not sure I get this. why not $stdin.gets? does line_count come from rewind method?
def print_a_line(line_count, f)
  puts "#{line_count}, #{f.gets.chomp}"
end

# variable set and opening of the file
current_file = open(input_file)

puts "First let's print the whole file:\n"

# method with the current_file parameter
print_all(current_file)

puts "Now let's rewind, kind of like a tape."

# method with the current_file parameter
rewind(current_file)

puts "Let's print three lines:"

# numbers must equal lines of the file. Counts them up printing the number (1 2 3) then the text for that line in the file
current_line = 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)
