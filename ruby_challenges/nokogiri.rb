#https://learn.skillcrush.com/module-16/how-to-use-nokogiri/

require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.skillcrush.com'))
#puts doc
#puts doc.inspect

puts doc.search("h1")
#.search("h1")
#.search("h1.entry-title")    class of element
#.css('.entry-title')    search via css
#.css('.entry-title').inner_html    what is within the html tag
#.css('.entry-title').chilren   what is with the html tag. span will seperate into chunks
#.css('.entry-title').children[0]      first in the array
#.methods   all the methods available to doc 
