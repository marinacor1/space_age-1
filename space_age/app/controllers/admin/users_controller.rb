class Admin::UsersController < Admin::BaseController
  # before_action: require_login!, except: [:new, :create]
  def show
    @admin = current_user
  end

end
