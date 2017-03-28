class HomeController < ApplicationController
  def index
    @locations = Location.all
  end

  def tos
  end
end
