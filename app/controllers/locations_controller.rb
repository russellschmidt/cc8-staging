class LocationsController < ApplicationController
  layout 'administration'

  def new
  end

  def edit
  end

  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
    @partners = Partner.where(location_id: @location.id)
  end
end
