require 'rails_helper'

<<<<<<< HEAD
describe "the show message list process" do
=======
describe "the show message list process", :vcr => true do
>>>>>>> 0aa94613a4a24c351f4e40c4e2fd9aed37dc8bcf
  it "should list of messages on page" do
    message = FactoryGirl.create(:message, :body => "success")
    visit messages_path
    expect(page).to have_content("success")
  end

  it "should show text to" do
<<<<<<< HEAD
    message = FactoryGirl.create(:message, :to => "9714445555")
    visit messages_path
    expect(page).to have_content("9714445555")
  end

  it "should show text from" do
    message = FactoryGirl.create(:message, :to => "9715551212")
    visit messages_path
    expect(page).to have_content("9715551212")
  end
  
=======
    message = FactoryGirl.create(:message)
    visit messages_path
    expect(page).to have_content("9716789823")
  end

  it "should show text from" do
    message = FactoryGirl.create(:message)
    visit messages_path
    expect(page).to have_content("5038223444")
  end

>>>>>>> 0aa94613a4a24c351f4e40c4e2fd9aed37dc8bcf
end
