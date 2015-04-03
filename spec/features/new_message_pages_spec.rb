require 'rails_helper'

<<<<<<< HEAD
describe 'add new message process' do
=======
describe 'add new message process', :vcr => true do
>>>>>>> 0aa94613a4a24c351f4e40c4e2fd9aed37dc8bcf

  it 'creates a new message' do
    visit messages_path
    click_on "Send new text"
<<<<<<< HEAD
    fill_in "To", :with => "1112224444"
    fill_in "From", :with => "5551212121"
=======
    fill_in "To", :with => "9716789823"
    fill_in "From", :with => "5038223444"
>>>>>>> 0aa94613a4a24c351f4e40c4e2fd9aed37dc8bcf
    fill_in "Body", :with => "Did it work?"
    click_on "Send Text"
    expect(page).to have_content "Did it work?"
  end

  it 'shows an error when To is not filled in' do
    visit messages_path
    click_on "Send new text"
    fill_in "To", :with => ""
<<<<<<< HEAD
    fill_in "From", :with => "5551212121"
=======
    fill_in "From", :with => "5038223444"
>>>>>>> 0aa94613a4a24c351f4e40c4e2fd9aed37dc8bcf
    fill_in "Body", :with => "Did it work?"
    click_on "Send Text"
    expect(page).to have_content "errors"
  end

  it 'shows an error when From is not filled in' do
    visit messages_path
    click_on "Send new text"
<<<<<<< HEAD
    fill_in "To", :with => "5551212121"
=======
    fill_in "To", :with => "9716789823"
>>>>>>> 0aa94613a4a24c351f4e40c4e2fd9aed37dc8bcf
    fill_in "From", :with => ""
    fill_in "Body", :with => "Did it work?"
    click_on "Send Text"
    expect(page).to have_content "errors"
  end

  it 'shows an error when Body is not filled in' do
    visit messages_path
    click_on "Send new text"
<<<<<<< HEAD
    fill_in "To", :with => "5551212121"
    fill_in "From", :with => "1112224444"
=======
    fill_in "To", :with => "9716789823"
    fill_in "From", :with => "5038223444"
>>>>>>> 0aa94613a4a24c351f4e40c4e2fd9aed37dc8bcf
    fill_in "Body", :with => ""
    click_on "Send Text"
    expect(page).to have_content "errors"
  end

  it 'shows an error when form is not filled in' do
    visit messages_path
    click_on "Send new text"
    fill_in "To", :with => ""
    fill_in "From", :with => ""
    fill_in "Body", :with => ""
    click_on "Send Text"
    expect(page).to have_content "errors"
  end

end
