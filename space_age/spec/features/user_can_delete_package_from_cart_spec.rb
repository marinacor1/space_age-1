RSpec.feature "User can delete a package from their cart" do
  scenario "they no longer see the package in their cart" do

    package = create(:package)

    visit package_path(package)

    click_on "Add Package to Trip"

    visit '/trip'

    within ".package" do
      click_on 'Remove'
    end

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
