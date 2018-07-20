#Snippets of Ruby code for reference

#method, pass a variable, add
def add_twos(num1, num2)
  number = (num1 + num2)
  puts number
end
add_twos(2, 2)

#ask a question, get the answer, convert to integer, math, include a variable in a string
puts "Give me a number"
number = gets.to_i
final_number = ((number +5) *2 -4) /2 - (number)
puts "Always #{final_number}"
#the math is wrong. find the original exercise to correct.

#refactored
puts "Give me a number"
first_number = gets.to_i
puts 'Always ' + (((first_number + 5) * 2 - 4) / 2 - first_number).to_s

#as method
def always_threes
  puts "Give me a number"
  number = gets.to_i
  puts "Always " + (((number + 5) * 2 - 4) / 2 - number).to_s + "!"
end
  always_threes
#end always_threes

#Date: mm/dd/yyyy
date = Time.new
#set 'date' equal to the current date/time.
date = date.month.to_s + "/" + date.day.to_s + "/" + date.year.to_s
#Without this it will output 2015-01-10 11:33:05 +0000; this formats it to display MM/DD/YYYY
puts date
#output the date
#https://stackoverflow.com/questions/7415982/how-do-i-get-the-current-date-time-in-dd-mm-yyyy-hhmm-format

#time, if, elsif, && and, || or, call a method in a string
def determine_current_hour
  current_time = Time.new
  current_hour = current_time.hour
end

def greeting(current_hour)
  if(current_hour > 3 && current_hour < 12)
    time = "morning"
  elsif(current_hour > 12 && current_hour < 18)
    time = "afternoon"
  elsif(current_hour > 18 || current_hour < 2)
    time = "evening"
  end
end

puts "What is your name?"
my_name = gets

print "Good " + greeting(determine_current_hour), ", #{my_name.capitalize}!"
#end

#method from method
puts "What is your name?"
my_name = gets

def determine_current_hour
  current_time = Time.new
  current_hour = current_time.hour
end

def greeting(my_name)
  current_hour = determine_current_hour
  if(current_hour > 3 && current_hour < 12) then
    time = "morning"
  elsif(current_hour > 12 && current_hour < 18) then
    time = "afternoon"
  elsif(current_hour > 18 || current_hour < 2) then
    time = "evening"
  end
  puts "Good #{time}, #{my_name.capitalize}!" #the ! is on the next line - why?
end

greeting(my_name)
#end

#while, array, index array
love_you_more = [
  "I love you more than Reece's cups!",
  "I love you more than balloons!",
  "I love you more than puppies!",
  "I love you more than cocoa!"
]

all_the_ways_I_love_you = love_you_more.size
love_displayed = 0

while (love_displayed <= all_the_ways_I_love_you)
  puts love_you_more[love_displayed]
  love_displayed += 1
  puts love_displayed
end
#end

#y/n answer, gets.chomp, downcase, while, variable
puts "Ready to go to bed? Please answer Y/N:"
answer = gets.chomp.downcase #needs chomp or the answer is n + something so script stops
while (answer == "n")
  puts "Ready to go to bed? Please answer Y/N:"
  answer = gets.chomp.downcase
end
if (answer == "y")
  puts "About time!"
end
#end

#array, gets, integer, string,
def birthdate
  puts "What is your birthdate? Write it as MMDDYYYY, thanks!"
  birthdate = gets
end
def birth_path_number(birthdate)
  number = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i + birthdate[4].to_i + birthdate[5].to_i + birthdate[6].to_i + birthdate[7].to_i
  number = number.to_s
  number = number[0].to_i + number[1].to_i
  if number > 9
    number = number.to_s
    number = number[0].to_i + number[1].to_i
  else number = number
  end
end
birth_path_number = birth_path_number(birthdate)
#end

#parent/child class object, new object, inspect, set & get
class Footballplayer
  def set_name=(name)
    @name = name
  end
  def get_name
    return @name
  end
end
  class Qb < Footballplayer
    def quarterback
      return "Quarterback"
    end
  end
    quarterback = Qb.new
    quarterback.set_name= "Aaron Rodgers"
    quarterbackname = quarterback.get_name
puts quarterback.inspect

#case statement
fav_color = "blue"
case fav_color
when "blue"
  puts "Blue like the sky"
when "purple"
  puts "Purple plums are the tasties"
else
  puts "Hmm, well I don't know what that color is!"
end

#FizzBuzz, counting, remainder modulus, if/else
i = 0
while i < 101
  if i%3 == 0 && i%5 == 0
    puts "FizzBuzz"
  elsif i%3 == 0
    puts "Fizz"
  elsif i%5 == 0
      puts "Buzzz"
  else
      puts i
  end
  i+=1
end

number = 0
while (number <= 99)
  number = number + 1
  if (number % 15) == 0
    puts "FizzBuzz"
  elsif (number % 3) == 0
    puts "Fizz"
  elsif (number % 5) == 0
      puts "Buzz"
  else
    puts number
  end
end
