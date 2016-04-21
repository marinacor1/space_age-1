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

RSpec.feature "registered user can log in" do
  context "with valid inputs" do
    scenario "they see a link to log in" do
      user = create(:user)

      visit '/login'
      click_on "Login"

      expect(current_path).to eq(login_path)
save_and_open_page
      within ".login_form" do
        fill_in "Username", with: "User"
        fill_in "Password", with: "password"
        click_on "Sign In"
      end

      expect(current_path).to eq(packages_path)
      expect(page).to_not have_content "Login"
      expect(page).to have_link "Logout", logout_path
    end
  end

end
