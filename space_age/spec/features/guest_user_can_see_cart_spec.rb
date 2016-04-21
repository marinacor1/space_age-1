# As a visitor when I have items in my cart
# And when I visit "/cart"
# I should not see an option to "Checkout"
# I should see an option to "Login or Create Account to Checkout"

# After I create an account
# And I visit "/cart
# Then I should see all of the data that was there when I was not logged in

# When I click "Logout"
# Then I should see see "Login"
# And I should not see "Logout"
require 'rails_helper'

RSpec.feature "guest user can see cart" do
  context "a guest user creates a trip" do
    scenario "they are prompted to create an account" do
      package = create(:package)

      visit package_path(package)

      click_on "Add Package to Trip"

      visit '/trip'

      expect(page).to_not have_link("Checkout", checkout_path)
      expect(page).to have_link("Login or Create Account to Purchase", login_path)
    end
  end

  context "a guest user returns to the cart after registering" do
    scenario "they see all of the data that was there before they left to register" do
      package = create(:package)

      visit package_path(package)

      click_on "Add Package to Trip"

      visit '/trip'

      click_on "Login or Create Account to Purchase"

      click_on "Create Account"

      within ".form" do
        fill_in "Username", with: "User"
        fill_in "Email", with: "email"
        fill_in "Password", with: "password"
        fill_in "Password confirmation", with: "password"
        click_button "Create Account"
      end

      visit '/trip'

      expect(page).to have_content package.title
      expect(page).to have_content package.description
      expect(page).to have_content package.price.to_s
      expect(page).to have_xpath("//img[@src=\"#{package.image}\"]")

      expect(page).to have_link("Checkout", checkout_path)
      expect(page).to_not have_link("Login or Create Account to Purchase", login_path)
    end
  end
end
