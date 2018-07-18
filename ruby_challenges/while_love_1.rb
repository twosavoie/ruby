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
