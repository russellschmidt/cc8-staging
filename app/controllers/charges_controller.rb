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
      description: Campaign.find(params[:campaign_id]).name,
      currency: 'usd'
    )

    donation = Donation.new(
      campaign_id:                params[:campaign_id],
      stripe_customer_id:         customer.id,
      total_in_cents:             params[:totalDonation],
      tip_in_cents:               params[:donationToTip],
      campaign_donation_in_cents: params[:donationToCampaign],
      stripe_email:               params[:stripeEmail],
      name:                       params[:stripeBillingName],
      address:                    params[:stripeBillingAddress],
      city:                       params[:stripeBillingAddressCity],
      state:                      params[:stripeBillingAddressState],
      zip:                        params[:stripeBillingAddressZip],
      country:                    params[:stripeBillingAddressCountry],
      countryCode:                params[:stripeBillingAddressCountryCode]
    )

    if user_signed_in?
      donation = set_user_id donation
    end

    # @campaign = Campaign.find(params[:campaign_id])
    @co2 = @campaign.co2_per_dollar.to_f * (params[:donationToCampaign].to_f/100)
    @donation_object = {
      customer: customer,
      charge: charge,
      donation: donation,
    }

    if donation.save
      flash[:notice] = "Thank you!"
      # Here is where you trigger the mailer to send the receipt email
      ReceiptMailer.send_receipt_email(customer.email, @campaign, @co2).deliver_later
      ReceiptMailer.mail_sorter( @donation_object, @co2 ) )
    else
      flash[:error] = "Error saving the transaction to our database"
    end

    @meta_description_text = "I just offset #{ @co2 } pounds of CO2 by donating to Climate Cents"

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
