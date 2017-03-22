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
      amount: params[:totalDonation],
      description: 'Test Stripe Customer',
      currency: 'usd'
      )

    donation = Donation.new(
      campaign_id: params[:campaign_id],
      stripe_customer_id: customer.id,
      total_in_cents: params[:totalDonation],
      tip_in_cents: params[:donationToTip],
      campaign_donation_in_cents: params[:donationToCampaign],
      stripe_email: params[:stripeEmail]
    )

    if user_signed_in?
      donation = set_user_id donation
    end

    @campaign = Campaign.find(params[:campaign_id])
    @co2 = @campaign.co2_per_dollar.to_f * (params[:donationToCampaign].to_f/100)

    if donation.save
      flash[:notice] = "Thank you!"
      # Here is where you trigger the mailer to send the receipt email
    else
      flash[:error] = "Error saving the transaction to our database"
    end

    @meta_description_text = "I just offset #{ @co2} pounds of CO2 by donating to Climate Cents"

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end

  private
    def set_user_id(donation)
      user = User.find_by(email: params[:stripeEmail])
      if user.present?
        donation.user_id = user.id
      end
      donation
    end


end
