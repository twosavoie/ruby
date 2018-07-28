require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.marthastewart.com/312598/brick-pressed-sandwich'))
#figured ingredients would be in a list
search = doc.css("li")
puts search

list = doc.css('.component-text').children
list.each do |ingredient|
puts "#{ingredient}"
end
#per sk code:
#list = doc.css('.component-text')
# loop through the ingredients and puts just the ingredient text
#list.each do |n|
#    puts n.inner_html
#end
