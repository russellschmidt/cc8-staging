class LocationsController < ApplicationController
  layout 'administration'

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
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
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
    @location = Location.find(params[:id])
    @partners = Partner.where(location_id: @location.id)
  end

  private

    def location_params
      params.require(:location).permit(:name)
    end
end
