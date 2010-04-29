# 1. Register for an account at clickatell (), you should get 10 free sms messages
# 2. Install the clickatell gem by typinging: gem install clickatell
#    Documentation: http://github.com/lukeredpath/clickatell

api_id   = ENV['CLICKATELL_ID'] 
username = ENV['CLICKATELL_USERNAME'] 
password = ENV['CLICKATELL_PASSWORD']

require 'rubygems'
require 'clickatell'
api = Clickatell::API.authenticate(api_id, username, password) 
api.send_message('250788685005', 'How easy is that to spam you')


# run this command: 
#    ruby sending_sms.rb CLICKATELL_ID=x CLICKATELL_USERNAME=y CLICKATELL_PASSWORD=z