class DonationsController < ApplicationController
  before_action :authenticate_user!, :admin_list

  layout "administration"

  before_filter :find_donation, only: [:show, :edit, :update]

  def index
    @donations = Donation.all.order("created_at ASC")
  end

  def show
  end

  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.create(donation_params)
    if @donation.save
      redirect_to donation_path(@donation)
    else
      flash[:error] = "Error saving the donation to our database"
      redirect_to donations_path
    end
  end

  def edit
  end

  def update
    if @donation.update(donation_params)
      redirect_to donation_path(@donation)
    else
      flash[:error] = "Error saving the donation to our database"
      redirect_to donations_path
    end
  end

  private
  # start private
    def donation_params
      params.require(:donation).permit(:user_id, :campaign_id, :stripe_email,
        :stripe_customer_id, :total_in_cents, :campaign_donation_in_cents,
        :tip_in_cents, :name, :address, :city, :state, :zip, :country, :countryCode)
    end

    def find_donation
      @donation = Donation.find(params[:id])
    end

    def admin_list
      unless user_signed_in? && current_user.admin?
        redirect_to admin_index_path
      end
    end

  # end private
end
