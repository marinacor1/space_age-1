require 'rails_helper'

RSpec.feature "admin can login" do
  require FeatureHelper
  context "when logged in admin can see admin dashboard" do
    admin_login

    expect(current_path).to eq '/admin/dashboard'
  end
end
