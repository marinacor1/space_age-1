require 'rails_helper'

RSpec.feature "user can add package to trip" do
  scenario "user can see package in trip (cart)" do
    package = create(:package)

    visit package_path(package)

    click_on "Add Package to Trip"

    expect(page).to have_content ("You have added #{package.title} to your trip. Your current trip costs: #{package.price}.")
  end

  scenario "user can see multiple packages in trip (cart)" do
    package1, package2 = create_list(:package, 2)

    visit package_path(package1)

    click_on "Add Package to Trip"

    expect(page).to have_content ("You have added #{package1.title} to your trip. Your current trip costs: #{package1.price}.")

    visit package_path(package2)

    click_on "Add Package to Trip"
    expect(page).to have_content ("You have added #{package2.title} to your trip. Your current trip costs: #{package1.price + package2.price}.")
  end

  xscenario "user can add item in cart from index page" do
    package1, package2 = create_list(:package, 2)

    visit packages_path

    click_on "Add #{package2.title} to Trip" #this we need to rethink because the link would be for each item
    expect(page).to have_content("You have added #{package2.title} to your trip. Your current trip costs: #{package2.price}.")

    click_on "Trip"
    total_prices = package1.price + package2.price

    expect(current_path).to eq("/trip")
    expect(page).to have_content "#{package.title}"
    expect(page).to have_content "#{package.description}"
    expect(page).to have_content "#{package.price}"
    expect(page).to have_content "Your current trip costs:#{total_prices}"
  end
end
