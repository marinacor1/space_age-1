require 'rails_helper'

RSpec.feature "admin can add a new item" do
  scenario "admin creates an item with a title, description, price" do

    admin = User.new(id: 1, username: "jb", role: 1)
    admin.save(validates: false)


    destination = create(:destination)

    ApplicationController.any_instance.stubs(:current_user).returns(admin)

    visit admin_dashboard_path(admin)

    image = 'spec/support/fixtures/people_1.jpg'
    click_on "Create a New Package"

    fill_in "Package Title", with: "Super Lux"
    fill_in "Package Description", with: "very lux"
    fill_in "Choose a Price for the New Package", with: 1000.00
    select destination.planet, from: "Choose a Destination"
    attach_file('Choose an Image', File.absolute_path(image))


    click_on "Create Package"

    package = Package.find_by(title: "Super Lux")


    expect(current_path).to eq package_path(package)
    expect(page).to have_content "Super Lux"
    expect(page).to have_content "very lux"
    expect(page).to have_content "1000.0"
    expect(page).to have_content destination.planet

  end
end
