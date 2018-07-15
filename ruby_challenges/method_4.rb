

def determine_current_hour
  current_time = Time.new
  current_hour = current_time.hour
end

def greeting(determine_current_hour)
  current_hour = determine_current_hour
  if(current_hour > 3 && current_hour < 12) then
    time = "morning"
  elsif(current_hour > 12 && current_hour < 18) then
    time = "afternoon"
  elsif(current_hour > 18 || current_hour < 2) then
    time = "evening"
  end
  #puts "Good #{time}, #{my_name.capitalize}!" #the ! is on the next line - why?
end

puts "What is your name?"
my_name = gets

puts "Good" + greeting(determine_current_hour), "#{my_name.capitalize}!"

#greeting(my_name)
