require 'rails_helper'

feature "user can view index page" do
  scenario "user will see full options for images" do
    destination = create_list(:destination, 3)
    visit root_path
    click_on "Destinations" #link to index

    expect(current_path).to eq(destinations_path)
    # fill_in "location", with: "Mars" #will replace title
    # fill_in "price", with: "$1000"

    # fill_in "description", with: "See the red planet up close."
    within("nav_bar") do
      expect(page).to have_link "Cart", href: cart_path
      expect(page).to have_content "Logo"
    end
    expect(page).to have_content "Mars"
    expect(page).to have_content "See the red planet up close"
    expect(page).to have_content "Moon"
    expect(page).to have_content "Walk on the moon"
    expect(page).to have_content "Deep Space"
    expect(page).to have_content "See the skies like you have never seen them before"
  end

end


#Location: Mars, Moon, Deep Space
#Location table attributes:
#location, price, description
#Booking Packages: Hotel, Space Walk, Dinner, Rover Rental, Stargazing
#Booking packages table attributes:
#Title, description, price
