require 'rails_helper'

RSpec.feature "admin can add a new item" do
  scenario "admin creates an item with a title, description, price" do

    admin = User.new(username: "jb", role: 1)
    admin.save(validates: false)
    package_image_path = "http://i666.photobucket.com/albums/vv27/Ades6_6_6/Wallcifi90.jpg"

    destination = create(:destination)

    ApplicationController.any_instance.stubs(:current_user).returns(admin)

    visit admin_dashboard_path

    click_on "Create a New Package"

    fill_in "Package Title", with: "Super Lux"
    fill_in "Package Description", with: "very lux"
    fill_in "Choose a Price for the New Package", 1000.00
    select destination.planet, from: destination_id
    fill_in "package_image_path", with: package_image_path

    package = Package.find_by(title: "Super Lux")

    expect(current_path).to eq package_path(package)
    expect(page).to have_content "Super Lux"
    expect(page).to have_content "very lux"
    expect(page).to have_content "1000.00"
    expect(page).to have_content destination.planet
    expect(page).to have_css("img[src=\"#{package_image_path}\"]")
  end
end
