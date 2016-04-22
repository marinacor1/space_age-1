# When I click "Logout"
# Then I should see see "Login"
# And I should not see "Logout"
require 'rails_helper'

RSpec.feature "user can log out" do
  scenario "they see a link to log in and not a link to log out" do
    user = create(:user)

    visit login_path

    within ".login_form" do
      fill_in "Username", with: "Andrew"
      fill_in "Password", with: "password"
      click_on "Sign In"
    end

    visit '/cart'

    click_on "Logout"

    expect(page).to have_content("Login")
    expect(page).to_not have_content("Logout")
  end
end
