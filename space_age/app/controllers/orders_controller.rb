class OrdersController < ApplicationController

  def index
    @orders = current_user.orders
  end

  def show
    if current_user == Order.find(params[:id]).user
      @order = Order.find(params[:id])
    else
      render file: "/public/404"
    end
  end

  def create
    order = Order.create(user_id: current_user.id, total_cost: @trip.total_price, status: 1)
    @trip.itinerary.keys.each do |id|
      order.order_packages.create(user_id: current_user.id, order_id: order.id, package_id: id.to_i)
    end
    flash[:success] = "Order was Successfully Placed"
    session[:trip].clear
    redirect_to orders_path
  end

end
