require "rails_helper"

RSpec.describe "user can land on root path" do
  xscenario "user sees basic layout of page" do

    visit root_path

    expect(page).to have_content "Eccentric"

    expect(page).to have_link "Explore", href: packages_path #items index

    # within("nav_bar") do
    #   expect(page).to have_link "Cart", href: cart_path
    #   expect(page).to have_content "Logo"
    # end

  end

#user can see basic layout if in error page?
end
