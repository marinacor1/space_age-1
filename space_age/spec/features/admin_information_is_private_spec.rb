require 'rails_helper'
# I cannot view the administrator screens or use admin functionality
RSpec.feature "admin information is private" do
  it "will not allow you to view admin screens if you are not an admin" do
    #admin can create packages and destination
    #test that params that come in do not have a role
  end
end
