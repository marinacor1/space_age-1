class UsersController < ApplicationController
  before_action :logged_in_user, except: [:new, :create]

  def index
   @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params_check)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/dashboard'
    else
      redirect_to login_path
    end
  end

  def edit
    if current_user == User.find(params[:id])
      @user = current_user
    else
      render file: "/public/404"
    end
  end

  def update
    @user = current_user
    if @user.update_attributes(params_check)
      redirect_to  '/dashboard'
    else
      flash[:error] = "Your account could not be updated. Please check your input and try again."
      render :edit
    end
  end

  def show
    @user = current_user
    @destination = Destination.new
    @package = Package.new
  end

  private

  def params_check
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
