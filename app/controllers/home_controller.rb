class HomeController < ApplicationController
  def index
    @locations = Location.all
    @partners = Partner.all
    @projects = Project.all
    @campaigns = Campaign.all
  end

end
