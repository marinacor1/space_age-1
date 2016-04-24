require 'rails_helper'

RSpec.feature "registered user can edit account" do
  include FeatureHelper
  context "with valid params" do
    scenario "they see a form to edit account" do
      @user = create(:user)

      email = @user.email

      user_login

      expect(current_path).to eq(packages_path)
      visit '/dashboard'
      click_on "Update Account"


        fill_in "Email", with: "JonB"
        fill_in "Password", with: "password1"
        fill_in "Password confirmation", with: "password1"
        click_on "Edit Account"


      expect(page).to have_content "Welcome to Your Dashboard, #{@user.username}"
      expect(page).to have_content "JonB"
      expect(page).not_to have_content email
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

      visit dashboard_path(user)

      click_on "Update Account"
      expect(page).to have_content "admin"
      expect(page).to_not have_content "Andrew"


      fill_in "Email", with: "adminorz"
      fill_in "Password", with: "password"
      click_on "Edit Account"

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
