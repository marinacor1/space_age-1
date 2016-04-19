require 'rails_helper'

RSpec.describe "user can view the show page of a location" do
  scenario "user sees detailed information about the specific location" do
    mars = Destination.create(location: "Mars", price: "999", description: "Enjoy a beatiful stay at the red hot planet.")
    visit_root_path
    click_on "Destinatons"

    expect(current_path).to eq(destinations_path)

    click_on "Mars"

    expect(current_path).to eq(destination_path(mars))
    within("nav_bar") do
      expect(page).to have_link "Cart", href: cart_path
      expect(page).to have_content "Logo"
    end
    expect(page).to have_content "Mars"
#    page.has_css?('table tr.foo')
#   page.should have_css('table tr.foo')
#   within(:css, "li#employee") do
    #   fill_in 'Name', :with => 'Jimmy'
    # end
  end
end
