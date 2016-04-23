class OrdersController < ApplicationController
  def index
    @orders = current_user.orders
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    order = Order.create(user_id: current_user.id, status: 1)
    @trip.itinerary.keys.each do |id|
      order.order_packages.create(user_id: current_user.id, order_id: order.id, package_id: id.to_i, sub_quantity: @trip.sub_quantity(id.to_i))
    end
    flash[:success] = "Order was Successfully Placed"
    redirect_to orders_path
  end

end
