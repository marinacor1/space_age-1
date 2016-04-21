require 'rails_helper'

RSpec.feature "admin can login" do
  include FeatureHelper
  it "when logged in admin can see admin dashboard" do
    admin = User.create(username: "adminor", password: "password", role: 1)

    admin_login
    # ApplicationController.any_instance.stubs(:current_user).returns(admin)
    expect(current_path).to eq '/admin/dashboard'
    expect(page).to have_content "Admin Dashboard"
  end
end
