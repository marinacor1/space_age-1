class Admin::UsersController < Admin::BaseController
  # before_action: require_login!, except: [:new, :create]
  def show
    @user = current_user
    @destination = Destination.new
    @package = Package.new
    @destinations = Destination.all
  end

end
