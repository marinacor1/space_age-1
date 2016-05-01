class ChargesController < ApplicationController
  include ChargesHelper

  def new
    @amount = @trip.stripe_price
  end

  def create
    @amount = @trip.stripe_price

    customer = Stripe::Customer.create(
      email:  params[:stripeEmail],
      source: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,
      amount:       @amount,
      description:  current_user.username,
      currency:     "usd"
    )

    create_order

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
