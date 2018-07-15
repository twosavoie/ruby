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
