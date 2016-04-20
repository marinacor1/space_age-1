require 'rails_helper'

RSpec.feature "a guest can browse by destination" do
  scenario "a guest sees an associated item for that destination " do

    package = create(:package)

    visit root_path

    click_link package.destination.planet
    expect(current_path).to eq destination_path(package.destination.planet)

    within ".planet-packages" do
      expect(page).to have_content package.title
      expect(page).to have_xpath("//img[@src=\"#{package.image}\"]")
      expect(page).to have_link package.image, href: package_path(package)
      # expect(page).to have_link package.title, href: package_path(package)

    end
  end

  xscenario "a guest sees all associated items for a destination" do
    destination = Destination.new(id: 1, planet: "Mars")
    package1 = Package.new(title: "Basic", price: 100, description: "Happy place", image: "img1", destination_id: 1)
    package2 = Package.new(title: "Intermediate", price: 200, description: "Really enjoyable", image: "img2", destination_id: 1)
    package3 = Package.new(title: "Luxury", price: 300, description: "Fun timez", image: "img3", destination_id: 1)

    visit root_path

    click_link destination_path(destination.planet)

    expect(current_path).to eq destination_path(destination.planet)

    within ".planet-packages" do
      expect(page).to have_content package1.title
      expect(page).to have_xpath("//img[@src=\"#{package1.image}\"]")
      expect(page).to have_link package1.image, href: package_path(package1)
      expect(page).to have_content package2.title
      expect(page).to have_xpath("//img[@src=\"#{package2.image}\"]")
      expect(page).to have_link package2.image, href: package_path(package2)
      expect(page).to have_content package3.title
      expect(page).to have_xpath("//img[@src=\"#{package3.image}\"]")
      expect(page).to have_link package3.image, href: package_path(package3)
    end
  end

  xscenario "user will not be able to see category if category does not exist" do
    destination = Destination.new(id: 1, planet: "Mars")
    package1 = Package.new(title: "Basic", price: 100, description: "Happy place", image: "img1", destination_id: 1)

    visit '/neptune'

    expect(page).to have_content "Site not found."
    end
  end
end
