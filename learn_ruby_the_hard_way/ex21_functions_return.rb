def add(a, b)
  puts "ADDING #{a} + #{b}"
  return a + b  # You can return anything that you can put to the right of an =
  # but you don't need to write return because Ruby implicitly returns whatever the last expression calculates
end

def subtract(a, b)
  puts "SUBTRACTING #{a} - #{b}"
  return a - b
end

def multiply(a, b)
  puts "MULTIPLYING #{a} * #{b}"
  return a * b
end

def divide(a, b)
  puts "DIVIDING #{a} / #{b}"
  return a / b
end

puts "Let's do some math with just functions!"

age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

# A puzzle for the extra credit, type it in anyway.
puts "Here is a puzzle."

#what = add(age, subtract(height, multiply(weight, divide(iq, 2))))
#what = 24 + 34 / 100 - 1023
what = age + (height - (weight * (iq / 2))) # Oh my goodness, I wrote this correctly!!!!

puts "That becomes: #{what}. Can you do it by hand?"
