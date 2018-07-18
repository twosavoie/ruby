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
