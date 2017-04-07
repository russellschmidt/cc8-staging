class CampaignsController < ApplicationController
  before_action :authenticate_user!, :admin_list

  layout "administration"

  before_filter :find_campaign, only: [:show, :edit, :update, :destroy]

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
    @campaign = Campaign.create(campaign_params)
    if @campaign.save
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

  def destroy
    if @campaign.destroy
      flash[:notice] = "Deletion successful. Donations are not deleted though their campaign_id is unhelpful now."
      redirect_to campaigns_path
    else
      flash[:error] = "{@campaign.name} did not delete"
      redirect_to campaign_path(@campaign)
    end
  end

  private
  # start private
    def campaign_params
      params.require(:campaign).permit(:project_id, :name, :description, :dollar_goal_in_cents,
        :start_date, :end_date, :co2_per_dollar, :active, :city, :state)
    end

    def find_campaign
      @campaign = Campaign.find(params[:id])
    end

    def admin_list
      unless user_signed_in? && current_user.admin?
        redirect_to admin_index_path
      end
    end

  # end private
end
