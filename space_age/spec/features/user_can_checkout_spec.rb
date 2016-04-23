require 'rails_helper'

RSpec.feature "User can checkout" do
  scenario "when a user checkouts they see a page with their orders" do

    package1 = create(:package)

    user = create(:user)

    ApplicationController.any_instance.stubs(:current_user).returns(user)

    visit package_path(package1)

    click_on "Add Package to Trip"

    visit '/trip'

    click_on "Checkout"

    expect(current_path).to eq orders_path

    order = Order.first

    expect(page).to have_content "Order was Successfully Placed"
    expect(page).to have_content "Order Number: #{order.id}"
    expect(page).to have_link "View", order_path(order)
  end
end
