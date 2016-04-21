# Background: My cart has an item in it
#       As a visitor
#       When I visit "/cart"
#       And I click link "Remove"
#       Then my current page should be "/cart"
#       And I should see a message styled in green
#       And the message should say "Successfully removed SOME_ITEM from your cart."
#       And the title "SOME_ITEM" should be a link to that item in case the user wants to add it back
#       And I should not see the item listed in cart

RSpec.feature "User can delete a package from their cart" do
  scenario "they no longer see the package in their cart" do

    package = create(:package)

    visit package_path(package)

    click_on "Add Package to Trip"

    visit '/trip'

    click_link 'Remove'

    expect(current_path).to eq "/trip"

    within ".flash" do
      expect(page).to have_content "Successfully removed #{package.title} from your trip"
      expect(page).to have_selector ".flash_delete_package"
    end
    # expect(page).to have_link package.title, href: package_path(package)

    within '.cart' do
      expect(page).to_not have_content package.title
      expect(page).to_not have_content package.price
      expect(page).to_not have_content package.image
      expect(page).to have_content "Your Cart is Empty"
    end
  end
end
