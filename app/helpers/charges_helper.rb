module ChargesHelper
  def create_order
    order = Order.create(user_id: current_user.id,
                      total_cost: @trip.total_price,
                          status: 1)
    @trip.itinerary.keys.each do |id|
      order.order_packages.create(user_id: current_user.id,
                                 order_id: order.id,
                               package_id: id.to_i)
    end
    flash[:success] = "Order was Successfully Placed," +
    " You Paid #{@trip.total_price}"
    session[:trip].clear
    redirect_to orders_path
  end
end
