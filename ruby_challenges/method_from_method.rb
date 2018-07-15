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
