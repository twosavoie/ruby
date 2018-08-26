#You use an array whenever you have something that matches the array data structure's useful features:

#If you need to maintain order. Remember, this is listed order, not sorted order. Arrays do not sort for you.
#If you need to access the contents randomly by a number. Remember, this is using cardinal numbers starting at 0.
#you can only use numbers to get items out of a array.
#If you need to go through the contents linearly (first to last). Remember, that's what for-loops are for.

ten_things = "Apple Oranges Crows Telephone Light Sugar"

puts "Wait there are not 10 things in that list. Let's fix that."

# split the ten_things string into individual items with "" and assign the array to the stuff variable
stuff = ten_things.split(' ')
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"] # another variable with more stuff in it

# using math to make sure there's 10 items

#while the length of "stuff" isn't equal to 10
while stuff.length !=10
  next_one = more_stuff.pop # takes the last item from the more_stuff array and assigns it to the next_one variable
  puts "Adding: #{next_one}"
  stuff.push(next_one) # adds what is in the next_one varible to the end of the stuff array
  puts "There are #{stuff.length} items now." # counts the number of items in the stuff array
end

# the stuff array now has 10 things added to it (method completed) and so this prints out all the items in the array
puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

puts stuff[1] # the second item in the stuff array
puts stuff[-1] # whoa! fancy # the last item in the stuff array
puts stuff.pop() # takes the last item from the stuff array
puts stuff.join(' ') # prints the stuff array as a list with a space between items
puts stuff[3..5].join("#") # prints the 4th through 6th items from the array with a hashtag between the items

#"data structure" is just a formal way to structure (organize) some data (facts). It really is that simple. Even though some data structures can get insanely complex, all they are is just a way to store facts inside a program so you can access them in different ways. They structure data.

I'll be getting into this more in the next exercise, but arrays are one of the most common data structures programmers use. They are simply ordered lists of facts you want to store and access randomly or linearly by an index. What?! Remember what I said though, just because a programmer said "array is a list" doesn't mean that it's any more complex than what an array already is in the real world. Let's look at the deck of cards as an example of an array:

#You have a bunch of cards with values.
#Those cards are in a stack, list, or array from the top card to the bottom card.
#You can take cards off the top, the bottom, the middle at random.
#If you want to find a specific card, you have to grab the deck and go through it one at a time.

# another way of adding and accessing items in an array (as in irb):
#?> things = ['a', 'b', 'c', 'd']
#=> ["a", "b", "c", "d"]
#>> puts things[1]
#b
#=> nil
#>> things[1] = 'z'
#=> "z"
#>> puts things[1]
#z
#=> nil
#>> things
#=> ["a", "z", "c", "d"]
