require 'rails_helper'

RSpec.feature "registered user can delete account" do
  include FeatureHelper
  context "with valid params" do
    scenario "they see the welcome page" do
      @user = create(:user)

      user_login
      expect(current_path).to eq(packages_path)

      visit '/dashboard'

      expect(page).to have_content @user.username
      expect(page).to have_content @user.email

      click_on "Delete My Account"

      expect(current_path).to eq(root_path)
      expect(page).to_not have_content @user.username
      expect(page).not_to have_content @user.email
      expect(page).to have_content "Account Successfully Deleted"
      # within("#title-bar-left") do
      #   expect(page).to have_content "Login"
      #   expect(page).to_not have_content "Logout"
      # end
    end
  end

  context "with invalid params as an admin" do
    scenario "they are able to delete their own account and not another users" do
      user = create(:user)
      admin = User.create(username: "admin", email: "emailzzz", password: "password", password_confirmation: "password", role: 1)

      visit '/login'
      click_on "Login"

      expect(current_path).to eq(login_path)

      within ".login_form" do
        fill_in "Username", with: "admin"
        fill_in "Password", with: "password"
        click_on "Sign In"
      end

      visit dashboard_path(user)
      expect(page).to have_content "admin"
      expect(page).to have_content "emailzzz"

      click_on "Delete My Account"

      expect(current_path).to eq(root_path)
      expect(page).to_not have_content "admin"
      expect(page).not_to have_content "emailzzz"
      expect(page).to have_content "Account Successfully Deleted"
    end
  end

end
