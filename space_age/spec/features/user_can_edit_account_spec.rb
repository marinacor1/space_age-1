require 'rails_helper'

RSpec.feature "registered user can edit account" do
  include FeatureHelper
  context "with valid params" do
    scenario "they see a form to edit account" do
      user = create(:user)

      user_login

      expect(current_path).to eq(packages_path)
      visit '/dashboard'
      click_on "Edit My Account"

      # within ".edit_form" do
        fill_in "Email", with: "JonBNasty@nasty.com"
        fill_in "Password", with: "password1"
        fill_in "Password confirmation", with: "password1"
        click_on "Edit Account"
      # end

       #is there a way to test that admin has been updated?
      expect(page).to have_content "JonBNasty@nasty.com"
      expect(page).not_to have_content "email@email.com"
    end
  end

  context "with invalid params as an admin" do
    scenario "they are redirected to index" do
      #TODO currently the admin can reach all these sites, however when they edit, they end up editing themselves
      #this is not easily testable in a feature test but is in the model test

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
      click_on "Edit My Account"

      fill_in "Username", with: "adminorz"
      fill_in "Password", with: "password"
      click_on "Edit Account"

      #currently the admin can edit, but it's its own account
      visit edit_user_path(user)
      expect(page).to have_content "You are not authorized to be at this site."
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
