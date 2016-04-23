require 'rails_helper'

RSpec.feature "user can see past orders" do
  scenario "user will see order history with all past orders" do
    user1, user2 = create_list(:user, 2)

    order1 = Order.create(user_id: user1.id)
    order2 = Order.create(user_id: user1.id)
    order3 = Order.create(user_id: user2.id)

    ApplicationController.any_instance.stubs(:current_user).returns(user1)

    visit '/orders'

    expect(page).to have_content "Order Number: #{order1.id}"
    expect(page).to have_content "Order Number: #{order2.id}"
    expect(page).to_not have_content "Order Number: #{order3.id}"
  end
end
