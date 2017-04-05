class CampaignsController < ApplicationController
  layout "administration"
  before_filter :find_campaign, only: [:show, :edit, :create]

  def index
    @campaigns = Campaign.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  private
  # start private
    def campaign_params
    end

    def find_campaign
      @campaign = Campaign.find(params[:id])
    end

  # end private
end
