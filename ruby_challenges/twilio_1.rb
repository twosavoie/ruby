#https://learn.skillcrush.com/module-17/twilio-magic-8-ball/

require 'rubygems'
require 'twilio-ruby'


#https://github.com/twilio/twilio-ruby
#https://www.twilio.com/docs/libraries/reference/twilio-ruby/index.html

message = @client.api.account.messages.create(
  
  body: "Haaaii"
)

#puts message.to
