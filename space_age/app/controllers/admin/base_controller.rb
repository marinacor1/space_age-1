class Admin::BaseController < ApplicationController
  before_action :require_admin

  def require_admin
    if current_user.nil?
      render file: "/public/404"
    else
      render file: "/public/404" unless current_user.admin?
    end
  end

  def show
  end

end
