class OrdersController < ApplicationController

  def index
    @orders = current_user.orders
  end

  def show
    if current_user.nil?
      render file: "/public/404"
    elsif current_user == Order.find(params[:id]).user || current_user.admin?
      @order = Order.find(params[:id])
    else
      render file: "/public/404"
    end
  end

  def create
    order = Order.create(user_id: current_user.id, total_cost: @trip.total_price, status: 1)
    order.create_packages(@trip)
    flash[:success] = "Order was Successfully Placed"
    session[:trip].clear
    redirect_to orders_path
  end

end
