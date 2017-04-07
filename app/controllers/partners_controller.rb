class PartnersController < ApplicationController
  before_action :authenticate_user!, :admin_list

  layout 'administration'

  before_filter :find_partner, only: [:edit, :update, :show, :destroy]

  def new
    @partner = Partner.new
  end

  def create
    @partner = Partner.create(partner_params)
    if @partner.save
      redirect_to partner_path(@partner)
    else
      flash[:error] = "Error saving the partner to our database"
      redirect_to partners_path
    end
  end

  def edit
  end

  def update
    if @partner.update(partner_params)
      redirect_to partner_path(@partner)
    else
      flash[:error] = "Error updating the partner in our database"
      redirect_to partners_path
    end
  end

  def index
    @partners = Partner.all
  end

  def show
    @projects = Project.where(partner_id: @partner.id)
  end

  def destroy
    if @partner.destroy
      flash[:notice] = "Deletion successful. Also deleted associated Projects, Campaigns."
      redirect_to partners_path
    else
      flash[:error] = "{@partner.name} did not delete"
      redirect_to partner_path(@partner)
    end
  end

  private
  # private
    def find_partner
      @partner = Partner.find(params[:id])
    end

    def partner_params
      params.require(:partner).permit(:name, :blurb, :location_id, :description, :news, :volunteer)
    end

    def admin_list
      unless user_signed_in? && current_user.admin?
        redirect_to admin_index_path
      end
    end
  # end private
end
