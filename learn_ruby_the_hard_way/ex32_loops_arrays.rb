the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# this first kind of for-loop goes through a list
# in a more traditional style found in other languages
for number in the_count
  puts "This is count #{number}"
end

# same as above, but in a more Ruby style
# this and the next one are the prefered
# way Ruby for-loops are written
fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end

# also we can go through mixed lists too
# note this is yet another style, exactly like above
# but a different syntax (way to write it).
change.each {|i| puts "I got #{i}" }

# we can also build lists, first start with an empty one
elements = []

# then use the range operator to do 0 to 5 counts
(0..5).each do |i|
  puts "adding #{i} to the list."
  #pushes the i variable on the *end* of the list
  elements.push(i)
end

# now we can print them out too
elements.each {|i| puts "Element was: #{i}" }

#You should immediately see that Ruby has two kinds of loops that I am calling a for-loop. In programming the term for-loop just means "a loop that goes through each thing in an array of things." In Ruby this is both for number in the_count style, and the more common fruits.each style. You should use the .each version as it is more reliable and what other Ruby programmers expect you to write.

#Ruby programmers are very particular about how their for-loops are written and will declare you a bad programmer for simply using this one construct wrong. They went so far as to break the for-each version of looping so that there are problems with using it, forcing you to conform to their culture. Heed my warning that you should always use .each and never for-each for fear of being forever branded bad and shunned. Yes, it is as ridiculous as it sounds.

#Find the Ruby documentation on arrays and read about them. What other operations can you do besides the push function? Try <<, which is the same as push but is an operator. fruits << x is the same as fruits.push(x).
