# As a visitor
# When I visit "/"
# Then I should see a link for "Login"
# And when I click "Login"
# And I should be on the "/login" page
# I should see a place to insert my credentials to login
# And I should see a link to "Create Account"
#
# As a visitor
# When I visit "/login
# And when I click link "Create Account"
# And I fill in my desired credentials
# And I submit my information
# Then my current page should be "/dashboard"
# And I should see a message in the navbar that says "Logged in as SOME_USER"
# And I should see my profile information
# And I should not see a link for "Login"
# And I should see a link for "Logout"

require 'rails_helper'

RSpec.feature "guest can register" do
  context "with valid inputs" do
    scenario "they see a link to log in" do
      visit root_path

      click_on "Login"

      expect(current_path).to eq login_path

      click_on "Create Account"

      expect(current_path).to eq signup_path

      within ".form" do
        fill_in "Username", with: "User"
        fill_in "Email", with: "email"
        fill_in "Password", with: "password"
        fill_in "Password confirmation", with: "password"
        click_button "Create Account"
      end

      expect(current_path).to eq dashboard_path
      within ".title-bar-right" do
        expect(page).to have_content "Logged in as #{User.first.username}"
      end

      expect(page).to have_content "Your Account:"
      expect(page).to have_content "Username: #{User.first.username}"
      expect(page).to have_content "Email: #{User.first.email}"
      expect(page).to_not have_content "Login"
      expect(page).to have_content "Logout"
    end
  end
end
