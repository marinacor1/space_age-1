require 'rails_helper'

RSpec.feature "user cannot make themselves an admin" do
  include FeatureHelper
  it "user will have no access to params" do
    @user = User.create(username: "Sam", email: "email123kk", password: "password", password_confirmation: "password")

    user_login

    visit '/admin/dashboard'

    expect(page).to have_content "The page you were looking for doesn't exist"
    end
end
