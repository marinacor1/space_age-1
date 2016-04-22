class UsersController < ApplicationController

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
    render :edit
  end

  def update
    @user = current_user
    current_user.update(params_check)
    if current_user.update
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  def show
    @user = current_user
  end

  def destroy
    @user = current_user
    @user.destroy
    redirect_to root_path
  end

  private

  def params_check
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
