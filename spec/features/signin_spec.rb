require "rails_helper"

RSpec.feature "Signin Management", :type => :feature do

  scenario "User try to signin" do
    signin_with_credentials('snm@snmmaurya.com', 'snmmaurya')

    expect(page).to have_text("Signed in success")
  end
  
  #----------- AJAX SCENARIOS ------------
  # scenario "Without Email" do
  #   signin_with_credentials('', 'snmmaurya')

  #   expect(page).to have_text("Invalid Username")
  # end

  # scenario "Without Passord" do
  #   signin_with_credentials('snm@snmmaurya.com', '')

  #   expect(page).to have_text("Invalid Password")
  # end


  # scenario "Wrong Email or Password" do
  #   signin_with_credentials('none@snmmaurya.com', 'none')

  #   expect(page).to have_text("Invalid Username or Password")
  # end

  def signin_with_credentials email, password
    visit "/users/sign_in"
    expect(page).to have_text("SIGN IN")
    
    fill_in "user_email", with: email
    fill_in "user_password", with: password
    click_button "signin"
  end
end