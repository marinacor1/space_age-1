require 'rails_helper'

RSpec.feature "admin information is private" do
  include FeatureHelper
  it "registered user does not have admin access" do
    @user = User.create(username: "Sam", email: "email123kk", password: "password", password_confirmation: "password")
    admin = User.create(username: "adminor", email: "emailzo", password: "password", password_confirmation: "password", role: 1)

    user_login

    visit '/admin/dashboard'

    expect(page).to have_content "The page you were looking for doesn't exist"
  end
end
