require 'rails_helper'

RSpec.feature "registered user can delete account" do
  include FeatureHelper
  context "with valid params" do
    scenario "they see the welcome page" do
      user = create(:user)

      user_login

      expect(current_path).to eq(packages_path)
      visit '/dashboard'
      click_on "Delete My Account"

      expect(current_path).to eq(root_path)
      expect(page).to_not have_content "Andrew"
      expect(page).not_to have_content "email@email.com"
      expect(page).to have_content "Account Successfully Deleted"
      # within("#title-bar-left") do
      #   expect(page).to have_content "Login"
      #   expect(page).to_not have_content "Logout"
      # end
    end
  end

  xcontext "with invalid params as an admin" do
    xscenario "they see an error message" do
      user = create(:user)

      visit '/login'
      click_on "Login"

      expect(current_path).to eq(login_path)
      within ".login_form" do
        fill_in "Username", with: "User"
        fill_in "Password", with: "password1"
        click_on "Sign In"
      end
      expect(current_path).to eq(login_path)
      expect(page).to have_content "Incorrect email/password combination."
      expect(page).to_not have_link "Logout", logout_path
    end
  end

  xcontext "as a guest" do
    xscenario "they see an error message" do
      user = create(:user)

      visit '/login'
      click_on "Login"

      expect(current_path).to eq(login_path)
      within ".login_form" do
        fill_in "Username", with: "Userzz"
        fill_in "Password", with: "password"
        click_on "Sign In"
      end
      expect(current_path).to eq(login_path)
      expect(page).to have_content "Incorrect email/password combination."
      expect(page).to_not have_link "Logout", logout_path
    end
  end

end
