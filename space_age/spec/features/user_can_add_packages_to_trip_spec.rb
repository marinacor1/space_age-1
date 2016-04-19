require 'rails_helper'

RSpec.feature "user can add package to trip" do
  scenario "user can see package in trip (cart)" do
    package = create(:package)

    visit package_path(package)

    click_on "Add Package to Trip"
    expect(page).to have_content ("You have added #{package.title} to your trip. Your current trip costs: #{package.price}.")
  end
end
