require 'rails_helper'

describe Message, :vcr => true do
  it { should validate_presence_of :body }
  it { should validate_presence_of :to }
  it { should validate_presence_of :from }
<<<<<<< HEAD

  it "will return the body of a text from the user" do
    message = FactoryGirl.create(:message, :body => "Test123")
=======
  it { should have_and_belong_to_many :contacts }

  it "will return the body of a text from the user" do
    message = FactoryGirl.build(:message, :body => "Test123")
>>>>>>> 0aa94613a4a24c351f4e40c4e2fd9aed37dc8bcf
    expect(message.body).to eq "Test123"
  end

  it "will return the 'to' of a text from a user" do
<<<<<<< HEAD
    message = FactoryGirl.create(:message, :to => "5034528963")
=======
    message = FactoryGirl.build(:message, :to => "5034528963")
>>>>>>> 0aa94613a4a24c351f4e40c4e2fd9aed37dc8bcf
    expect(message.to).to eq "5034528963"
  end

  it "will return the 'from' of a text from a user" do
<<<<<<< HEAD
    message = FactoryGirl.create(:message, :from => "8475213698")
=======
    message = FactoryGirl.build(:message, :from => "8475213698")
>>>>>>> 0aa94613a4a24c351f4e40c4e2fd9aed37dc8bcf
    expect(message.from).to eq "8475213698"
  end

  it "doesn't save the message if twilio gives an error" do
<<<<<<< HEAD
    message = FactoryGirl.create(:message, :to => '111222', :from => '9716789823')
    message.save.should be false
=======
    message = FactoryGirl.build(:message, :to => '111222')
    expect(message.save).to be false
  end

  it "will save the message if twilia numbers are valid" do
    message = FactoryGirl.build(:message)
    expect(message.save).to be true
>>>>>>> 0aa94613a4a24c351f4e40c4e2fd9aed37dc8bcf
  end

end
