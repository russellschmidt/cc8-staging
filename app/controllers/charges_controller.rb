class ChargesController < ApplicationController
  def new
  end

  def create

    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      card: params[:stripeToken]
      )

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: params[:amount],
      description: 'Test Stripe Customer',
      currency: 'usd'
      )

  rescue Stripe::CardError => e
    flash[:error] = e.message

    if e.nil?
      puts "***** HI HI HI "
    end

    redirect_to charges_path
  end

end
