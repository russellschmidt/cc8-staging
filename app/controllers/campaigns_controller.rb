class CampaignsController < ApplicationController
  layout "administration"
  before_filter :find_campaign, only: [:show, :edit, :create]

  def index
    @campaigns = Campaign.all.order("end_date ASC")
  end

  def show
    @donations = Donation.where(campaign_id: @campaign.id).order("created_at ASC")
  end

  def new
    @campaign = Campaign.new
  end

  def create
    if @campaign.save(campaign_params)
      redirect_to campaign_path(@campaign)
    else
      flash[:error] = "Error saving the campaign to our database"
      redirect_to campaigns_path
    end
  end

  def edit
  end

  def update
    if @campaign.update(campaign_params)
      redirect_to campaign_path(@campaign)
    else
      flash[:error] = "Error saving the campaign to our database"
      redirect_to campaigns_path
    end
  end

  private
  # start private
    def campaign_params
      params.require(:campaign).permit(:project_id, :name, :description, :dollar_goal_in_cents,
        :start_date, :end_date, :co2_per_dollar, :active, :created_at, :updated_at, :city, :state
        )
    end

    def find_campaign
      @campaign = Campaign.find(params[:id])
    end

  # end private
end
