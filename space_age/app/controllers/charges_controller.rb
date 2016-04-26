class ChargesController < ApplicationController
  def new
    @amount = @trip.total_price.to_i * 100
  end

  def create
    @amount = @trip.total_price.to_i * 100

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => current_user.username,
      :currency    => 'usd'
    )
    order = Order.create(user_id: current_user.id, total_cost: @trip.total_price, status: 1)
    @trip.itinerary.keys.each do |id|
      order.order_packages.create(user_id: current_user.id, order_id: order.id, package_id: id.to_i)
    end
    flash[:success] = "Order was Successfully Placed, You Paid #{@amount}"
    session[:trip].clear
    redirect_to orders_path

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
