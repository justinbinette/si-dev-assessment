class PagesController < ApplicationController
  def home
  end

  def sms
    require 'twilio-ruby'



account_sid = "AC18a24843ad56becc85043032c3efec7d" 
auth_token = "e72186683c4de8be4a55f7462fdd1f9e"

  @client = Twilio::REST::Client.new account_sid, auth_token 
  message = @client.account.messages.create(:body => params[:m], 
    :to => "params[:phone]",   
    :from => "9787889443")
puts message.sid

  
  end

end
