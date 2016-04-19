require 'rails_helper'

RSpec.feature "a guest can browse by destination" do
  scenario "a guest sees all associated items to that destination " do

    package = create(:package)

    visit root_path

    click_link package.destination.planet

    expect(current_path).to eq destination_path(package.destination)

    binding.pry
    expect(page).to have_link package.title, href: package_path(package)
    expect(page).to have_xpath("//img[@src=\"#{package.image}\"]")
    expect(page).to have_link package.image, href: package_path(package)
  end
end
