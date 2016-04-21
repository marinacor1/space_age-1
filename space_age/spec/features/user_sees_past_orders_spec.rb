# Background: An existing user that has multiple orders
# As an Authenticated User
# When I visit "/orders"
# Then I should see all orders belonging to me and no other orders

require 'rails_helper'

RSpec.feature "user can see past orders" do
  scenario "user will see order history with all past orders" do
    order1, order2, order3 = create_list(:order, 3)

    ApplicationController.any_instance.stubs(:current_user).returns(order1.user)

    visit '/orders'

    expect(page).to have_content "You ordered: #{order1.order_name}"
    expect(page).to_not have_content "You ordered: #{order2.order_name}"
    expect(page).to have_content "You ordered: #{order3.order_name}"


    # order1.packages.pluck(:names)
  end
end
