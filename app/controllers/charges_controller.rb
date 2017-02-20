class ChargesController < ApplicationController
  def new
  end

  def create
    tip = 0
    campaign_donation = params[:amount].to_i - tip

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

    donation = Donation.new(
      campaign_id: params[:campaign_id],
      stripe_customer_id: customer.id,
      total_in_cents: params[:amount],
      tip_in_cents: tip,
      campaign_donation_in_cents: campaign_donation
    )

    if current_user.present?
      donation.user_id = User.find_by(current_user.email)
    else
      user = User.find_by(email: params[:stripeEmail])
      if user.present?
        donation.user_id = user.id
      end
    end

    if donation.save
      flash[:notice] = "Thank you!"
    else
      flash[:error] = "Error saving the transaction to our database"
    end

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end

end
