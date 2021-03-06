# Get twilio-ruby from twilio.com/docs/ruby/install
require 'twilio-ruby'

# Get your Account Sid and Auth Token from twilio.com/user/account
account_sid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
auth_token = 'your_auth_token'
client = Twilio::REST::Client.new(account_sid, auth_token)

# Loop over conferences and print out a property for each one
conferences = client.account.conferences
                    .list(status: 'in-progress', "date_created>": '2009-07-06')
conferences.each do |conference|
  puts conference.status
end
