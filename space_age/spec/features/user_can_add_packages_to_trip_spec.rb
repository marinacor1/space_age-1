require 'rails_helper'

RSpec.feature "user can add package to trip" do
  scenario "user can see package in trip (cart)" do
    package1, package2 = create_list(:package, 2)

    visit package_path(package1)

    click_on "Add Package to Trip"

    expect(page).to have_content ("You have added #{package1.title} to your trip.")
    expect(page).to have_content "Your current trip has: #{package1.price}."

    visit package_path(package2)

    click_on "Add Package to Trip"

    expect(page).to have_content ("You have added #{package2.title} to your trip.")
    expect(page).to have_content "Your current trip has: #{package1.price + package2.price}."
  end
end
