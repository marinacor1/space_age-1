# Background: An existing user that has one previous order
# As an authenticated user
# When I visit "/orders"
# Then I should see my past order
# And I should see a link to view that order
# And when I click that link
# Then I should see each item that was ordered with the quantity and line-item subtotals
# And I should see links to each item's show page
# And I should see the current status of the order (ordered, paid, cancelled, completed)
# And I should see the total price for the order
# And I should see the date/time that the order was submitted
# If the order was completed or cancelled
# Then I should see a timestamp when the action took place
require 'rails_helper'

RSpec.feature "user sees past order details" do
  context "user has one past order" do
    scenario "they see the details of that order on a show page" do
      user = create(:user)

      order = Order.create(user_id: user.id)
      package1, package2 = create_list(:package, 2)
      OrderPackage.create(order_id: order.id, user_id: user.id,
                         package_id: package1.id)
      OrderPackage.create(order_id: order.id, user_id: user.id,
                         package_id: package2.id)

      ApplicationController.any_instance.stubs(:current_user).returns(user)

      visit '/orders'

      click_on "View"

      expect(current_path).to eq order_path(order)

      total_price = package1.price + package2.price

      expect(page).to have_content(package1.title)
      expect(page).to have_content(package1.price)
      expect(page).to have_link("show", package_path(package1))
      expect(page).to have_content(package2.title)
      expect(page).to have_content(package2.price)
      expect(page).to have_link("show", package_path(package2))

      expect(page).to have_content("order pending")
      expect(page).to have_content(total_price)
      expect(page).to have_content(order.created_at)
      expect(page).to have_content(order.updated_at)
    end
  end


end
