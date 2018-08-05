#https://learn.skillcrush.com/module-17/twilio-magic-8-ball/

require 'rubygems'
require 'twilio-ruby'

account_sid = "ACf2953c4831b4cbf28364ef2661e91433"
auth_token = "0fd6a517661bd668ed1bad0e42df585e"

@client = Twilio::REST::Client.new 'ACf2953c4831b4cbf28364ef2661e91433', '0fd6a517661bd668ed1bad0e42df585e'


#https://github.com/twilio/twilio-ruby
#https://www.twilio.com/docs/libraries/reference/twilio-ruby/index.html

message = @client.api.account.messages.create(
  from: "+19137054678",
  to: "+19137527729",
  body: "Haaaii"
)

#puts message.to
