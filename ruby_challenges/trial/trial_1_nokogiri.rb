#https://learn.skillcrush.com/module-16/how-to-use-nokogiri/

#require 'nokogiri'
#require 'open-uri'

#doc = Nokogiri::HTML(open('http://www.skillcrush.com'))
#puts doc
#puts doc.inspect

#puts doc.search("h1")

#doesn't work
require 'barometer'

def get_location(location)
  Barometer.new(location).measure
end

weather = get_location('Chicago')

weather.forecast.each do |forecast|
 puts forecast.starts_at.month.to_s + '/' + forecast.starts_at.day.to_s + ' is going to be ' + forecast.icon + ' with a low of ' + forecast.low.f.to_s + ' and a high of ' + forecast.high.f.to_s
end

puts weather.inspect
puts forecast.inspect
puts location.inspect


# snippet trial for weather_3.rb
#require 'barometer'

#puts "Where are you (city, zipcode, landmark, or Woe ID)"
#location = gets.chomp

#barometer = Barometer.new(location)
#weather = barometer.measure

#date = Time.new
#weather.for(date)       # returns the first successful forecast_measurement for the date

#puts date
#puts weather.for(date)    #.high.f
