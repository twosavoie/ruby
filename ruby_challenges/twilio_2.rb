#https://learn.skillcrush.com/module-17/twilio-magic-8-ball/

require 'rubygems'
require 'twilio-ruby'



@client = Twilio::REST::Client.new 'ACf2953c4831b4cbf28364ef2661e91433', '0fd6a517661bd668ed1bad0e42df585e'

answer = [
  "It is certain",
  "It is decidedly so.",
  "Without a doubt",
  "Yes - definitely.",
  "You may rely on it"
]

puts "Ask the magic 8-ball a question!"
gets

#syntax from https://github.com/twilio/twilio-ruby
message = @client.api.account.messages.create(
  from: "+19137054678",
  to: "+19137527729",
  body: answer.sample  #get a random item from the array
)

#puts message.to   this doesn't seem to add anything; and I don't see a ".to" method in the Ruby docs (though a lot of .to_blah)
