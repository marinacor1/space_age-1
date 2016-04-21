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
      expect(page).to have_link "Logout", logout_path
    end
  end

  context "with invalid inputs" do
    scenario "they see a link to create account again" do
      visit root_path

      click_on "Login"

      expect(current_path).to eq login_path

      click_on "Create Account"

      expect(current_path).to eq signup_path

      within ".form" do
        fill_in "Email", with: "email"
        fill_in "Password", with: "password"
        fill_in "Password confirmation", with: "password"
        click_button "Create Account"
      end

      expect(current_path).to eq login_path

      expect(page).to_not have_content "Your Account:"
      expect(page).to_not have_content "Username:"
      expect(page).to_not have_content "Email:"
      expect(page).to have_content "Login"
      expect(page).to_not have_link "Logout", logout_path
    end
  end

end
