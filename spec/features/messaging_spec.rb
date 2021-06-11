require 'rails_helper'


feature "Users can message each other" do
  scenario "Once a user is signed up they can send and receive messages" do

    sign_up_jane
    click_link "Logout"
    sign_up_mark

    click_button "View Jane's Profile"
    click_link "Message this user"
    fill_in "message[body]", with: "Hi Jane"
    click_button "Send message"
    click_link "Logout"
    visit "/"
    click_link "Login"
    fill_in "Email", with: "jdoe@email.com"
    fill_in "Password", with: "password"
    click_button "Log in"
    click_link "View inbox"
    click_link "Mark"
    expect(page).to have_content "Hi Jane"
  end
end