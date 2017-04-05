class PartnersController < ApplicationController
  layout 'administration'

  before_filter :find_partner, only: [:edit, :update, :show]

  def new
    @partner = Partner.new
  end

  def create
    @partner = Partner.create(partner_params)
    if @partner.save
      redirect_to partner_path(@partner)
    else
      flash[:error] = "Error saving the location to our database"
      redirect_to partners_path
    end
  end

  def edit
  end

  def update
    if @partner.update(partner_params)
      redirect_to partner_path(@partner)
    else
      flash[:error] = "Error updating the location in our database"
      redirect_to partners_path
    end
  end

  def index
    @partners = Partner.all
  end

  def show
    @projects = Project.where(partner_id: @partner.id)
  end

  private
  # private
    def find_partner
      @partner = Partner.find(params[:id])
    end

    def partner_params
      params.require(:location).permit(:name, :blurb, :location_id, :description, :news, :volunteer)
    end
  # end private
end
