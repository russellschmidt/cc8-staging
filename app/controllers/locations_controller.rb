class LocationsController < ApplicationController
  before_action :authenticate_user!, :admin_list

  layout 'administration'

  before_filter :find_location, only: [:edit, :update, :show, :destroy]

  def new
    @location = Location.new
  end

  def create
    @location = Location.create(location_params)
    if @location.save
      redirect_to location_path(@location)
    else
      flash[:error] = "Error saving the location to our database"
      redirect_to locations_path
    end
  end

  def edit
  end

  def update
    if @location.update(location_params)
      redirect_to location_path(@location)
    else
      flash[:error] = "Error updating the location in our database"
      redirect_to locations_path
    end
  end

  def index
    @locations = Location.all
  end

  def show
    @partners = Partner.where(location_id: @location.id)
  end

  def destroy
    if @location.destroy
      flash[:notice] = "Deletion successful. Also deleted associated Partners, Projects, Campaigns."
      redirect_to locations_path
    else
      flash[:error] = "{@location.name} did not delete"
      redirect_to location_path(@location)
    end
  end

  private
  # start private
    def find_location
      @location = Location.find(params[:id])
    end

    def location_params
      params.require(:location).permit(:name)
    end

    def admin_list
      unless user_signed_in? && current_user.admin?
        redirect_to admin_index_path
      end
    end
  # end private
end
