require 'rails_helper'

RSpec.feature "admin can login" do
  include FeatureHelper
  it "when logged in admin can see admin dashboard" do
    admin = User.create(username: "adminor", email: "emailzzz", password: "password", password_confirmation: "password", role: 1)

    admin_login
    expect(current_path).to eq '/admin/dashboard'
    expect(page).to have_content "Admin Dashboard"
  end
end
