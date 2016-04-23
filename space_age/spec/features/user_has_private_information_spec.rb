require 'rails_helper'
# As an Authenticated User
# I cannot view another user's private data (current or past orders, etc)
RSpec.feature "user cannot see another users private data" do
  include FeatureHelper
  it "is private data like current or past orders" do
    user1, user2 = create_list(:user, 2)
    @user = user1
    order = Order.create(user_id: user2.id, total_cost: 3000)
    package1, package2 = create_list(:package, 2)
    OrderPackage.create(order_id: order.id, user_id: user2.id,
                       package_id: package1.id)
    OrderPackage.create(order_id: order.id, user_id: user2.id,
                       package_id: package2.id)

    ApplicationController.any_instance.stubs(:current_user).returns(user1)
    # user_login
    visit order_path(user2)

    expect(page).to have_content "The page you were looking for doesn't exist."
    expect(page).to_not have_content package1.title
    expect(page).to_not have_content package2.title
    expect(page).to_not have_content order.total_cost
  end
end
