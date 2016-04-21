class Admin::UsersController < Admin::BaseController
  # before_action: require_login!, except: [:new, :creaet]
  def show
    @admin = current_user
  end
end
