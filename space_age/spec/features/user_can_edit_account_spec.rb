require 'rails_helper'

RSpec.feature "registered user can edit account" do
  include FeatureHelper
  context "with valid params" do
    scenario "they see a form to edit account" do
      @user = create(:user)

      user_login

      expect(current_path).to eq(packages_path)
      visit '/dashboard'

      click_on "Edit Account"

      fill_in "Email", with: "JonBNasty@nasty.com"
      fill_in "Password", with: "password1"
      fill_in "Password confirmation", with: "password1"
      click_on "Edit Account"

      expect(page).to have_content "JonBNasty@nasty.com"
      expect(page).not_to have_content "email@email.com"
    end
  end

  context "with invalid params as an admin" do
    scenario "they are redirected to index" do

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
      expect(current_path).to eq '/admin/dashboard'

      visit edit_user_path(user)
      expect(page).to have_content "The page you were looking for doesn't exist."
    end
  end

  context "as a guest" do
    scenario "they see an error message" do
      user = create(:user)

      visit dashboard_path(user)
      expect(page).to have_content "The page you were looking for doesn't exist."


      visit edit_user_path(user)
      expect(page).to have_content "The page you were looking for doesn't exist."
    end
  end

end
