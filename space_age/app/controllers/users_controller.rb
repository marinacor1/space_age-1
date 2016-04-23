class UsersController < ApplicationController
  before_action :correct_logged_in_user, only: [:edit, :update, :destroy]
  before_action :logged_in_user, except: [:new, :create]

  def logged_in_user
    unless current_user
      render file: "/public/404"
    end
  end

  def correct_logged_in_user
    unless logged_in?
      render file: "/public/404"
    end
  end

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
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(params_check)
      redirect_to user_path(@user)
    else
      flash[:error] = "Your account could not be updated. Please check your input and try again."
      render :edit
    end
  end

  def show
    @user = current_user
  end

  def destroy
    @user = current_user
    @user.destroy
    session.clear
    redirect_to root_path
    flash[:error] = "Account Successfully Deleted"
  end

  private

  def params_check
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
