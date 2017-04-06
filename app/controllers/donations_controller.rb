class DonationsController < ApplicationController
  layout "administration"
  before_filter :find_campaign, only: [:show, :edit, :create]

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
      params.require(:donation).permit(:)
    end

    def find_donation
      @donation = Donation.find(params[:id])
    end

  # end private
end
