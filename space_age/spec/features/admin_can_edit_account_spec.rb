require 'rails_helper'

RSpec.feature "admin can edit account" do
  include FeatureHelper
  xcontext "with valid params" do
    scenario "they see a form to edit account" do
    admin = User.create(username: "adminor", email: "emailz", password: "password", password_confirmation: "password", role: 1)

      admin_login

      expect(current_path).to eq(admin_dashboard_path)
      click_on "Update Account"

        fill_in "Email", with: "JonB"
        fill_in "Password", with: "password"
        fill_in "Password confirmation", with: "password1"
        click_on "Edit Account"

      expect(page).to have_content "Welcome to Your Dashboard, #{user.username}"
      expect(page).to have_content "JonB"
      expect(page).not_to have_content "emailz"
    end
  end

  xcontext "with valid params only password" do
    include FeatureHelper
    scenario "they see a form to edit account" do
      @user = User.create(username: "hotdog", email: "wassup", password: "password", password_confirmation: "password")

      user_login

      visit '/dashboard'
      click_on "Update Account"

      fill_in "Password", with: "JonZ"
      fill_in "Password confirmation", with: "JonZ"
      click_on "Edit Account"
      expect(page).to have_content "Welcome to Your Dashboard, #{@user.username.capitalize}"
    end
  end
end
