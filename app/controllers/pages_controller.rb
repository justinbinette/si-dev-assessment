class PagesController < ApplicationController
  def home
  end

  def sms
    require 'twilio-ruby'

require 'figaro'

account_sid = ENV["account_sid"]
auth_token = ENV["auth_token"]

  @client = Twilio::REST::Client.new account_sid, auth_token 
  message = @client.account.messages.create(:body => params[:m], 
    :to => params[:user][:phone],   
    :from => "9787889443")
puts message.sid

  
  end

end
