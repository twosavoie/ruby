#https://www.queryoverflow.gdn/query/how-to-extract-five-days-weather-forecast-with-barometer-gem-using-rails-framework-27_46554389.html

require 'barometer'

puts "Please enter your zip code"
location = gets.chomp

def get_locations_weather(location)
  Barometer.new(location).measure
end

weather = get_locations_weather(location)
tomorrow = Time.now.strftime('%d').to_i + 1

weather.forecast.each do |forecast|

  day = forecast.starts_at.day

  if day == 'tomorrow'
      dayName = 'Tomorrow'

  else
      dayName =forecast.starts_at.strftime('%A')
  end

  puts dayName + ' is going to be' + forecast.icon + ' with a low of' + forecast.low.f.to_s + ' and a high of ' + forecast.high.f.to_s
  end

  #https://campushippo.com/lessons/an-easy-way-to-implement-weather-forecasting-in-rails-9d10403  another forecasting option

  #http://www.rubyinside.com/ruby-weather-libraries-1251.html  more forecasting options
