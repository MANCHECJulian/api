class ApplicationController < ActionController::Base
  def show
    account_sid = 'AC26f2571fb85d1a3fde34fe2cd5f6e43b'
    auth_token = '1f08aa0e57812449f0c5546fb487dad6'
    @client = Twilio::REST::Client.new(account_sid, auth_token)

    message = @client.messages.create(
      body: 'oui',
      from: '+19123485710',
      to: '+33787252660'
    )

    puts message.sid
  end
end
