#https://learn.skillcrush.com/module-16/install-nokogiri-scrape-a-recipe/

require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('https://www.marthastewart.com/312598/brick-pressed-sandwich'))
#puts doc
#puts doc.inspect

#find class for ingredients
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
