class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:session][:username])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      if current_admin?
        redirect_to admin_dashboard_path
      else
        redirect_to packages_path
      end
    else
      flash[:error] = "Incorrect email/password combination."
      redirect_to login_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
