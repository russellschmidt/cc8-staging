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

    @campaign = Campaign.find(params[:campaign_id])
    @co2 = @campaign.co2_per_dollar.to_f * (params[:donationToCampaign].to_f/100)

    if donation.save
      flash[:notice] = "Thank you!"

      @donation_created = donation.created_at.to_s(:long)
      send_correct_email
    else
      flash[:error] = "Error saving the transaction to our database"
    end

    @meta_description_text = "I just removed #{ @co2 } pounds of CO2 by donating to Climate Cents"

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

    def send_correct_email
      campaign = Campaign.find(params[:campaign_id])
      project = Project.find(campaign.project_id)
      if project.name.present?
      # if project match
        case project.name
        when "Bring Back the Bay's Kelp Forests"
          ReceiptMailer.kelp_receipt(
            params[:stripeEmail],
            @co2,
            params[:stripeBillingName],
            params[:totalDonation].to_f,
            params[:donationToTip].to_f,
            params[:donationToCampaign].to_f,
            @donation_created).deliver_later
        when "Urban Farming in Pacoima"
          ReceiptMailer.mend_receipt(
            params[:stripeEmail],
            @co2,
            params[:stripeBillingName],
            params[:totalDonation].to_f,
            params[:donationToTip].to_f,
            params[:donationToCampaign].to_f,
            @donation_created).deliver_later
        when "Recycle Electronics, Rebuild Lives"
          ReceiptMailer.homeboy_receipt(
            params[:stripeEmail],
            @co2,
            params[:stripeBillingName],
            params[:totalDonation].to_f,
            params[:donationToTip].to_f,
            params[:donationToCampaign].to_f,
            @donation_created).deliver_later
        when "Solar Panels for Safe Place for Youth"
          ReceiptMailer.grid_receipt(
            params[:stripeEmail],
            @co2,
            params[:stripeBillingName],
            params[:totalDonation].to_f,
            params[:donationToTip].to_f,
            params[:donationToCampaign].to_f,
            @donation_created).deliver_later
        else
          ReceiptMailer.receipt_email(
            params[:stripeEmail],
            @co2,
            params[:stripeBillingName],
            params[:totalDonation].to_f,
            params[:donationToTip].to_f,
            params[:donationToCampaign].to_f,
            @donation_created).deliver_later,
            params[:campaign_id]
        end
      else
        ReceiptMailer.receipt_email(
            params[:stripeEmail],
            @co2,
            params[:stripeBillingName],
            params[:totalDonation].to_f,
            params[:donationToTip].to_f,
            params[:donationToCampaign].to_f,
            @donation_created).deliver_later,
            params[:campaign_id]
      end
    end

end
