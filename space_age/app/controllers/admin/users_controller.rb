class Admin::UsersController < Admin::BaseController

  def show
    @user = current_user
    @destination = Destination.new
    @package = Package.new
    @destinations = Destination.all
  end

  def index
    @users = User.all
  end


end
