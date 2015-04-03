class Message < ActiveRecord::Base
<<<<<<< HEAD
=======
  has_and_belongs_to_many :contacts
>>>>>>> 0aa94613a4a24c351f4e40c4e2fd9aed37dc8bcf
  validates :body, :presence => true
  validates :to, :presence => true
  validates :from, :presence => true
  before_create :send_message


private
  def send_message
    begin
      response = RestClient::Request.new(
      :method => :post,
      :url => "https://api.twilio.com/2010-04-01/Accounts/#{ENV['TWILIO_ACCOUNT_SID']}/Messages.json",
      :user => ENV['TWILIO_ACCOUNT_SID'],
      :password => ENV['TWILIO_AUTH_TOKEN'],
      :payload => {
        :Body => body,
        :To => to,
        :From => from }
        ).execute
<<<<<<< HEAD
    rescue
=======
    rescue RestClient::BadRequest => error
      message = JSON.parse(error.response)['message']
      errors.add(:base, message)
>>>>>>> 0aa94613a4a24c351f4e40c4e2fd9aed37dc8bcf
      false
    end
  end
end
