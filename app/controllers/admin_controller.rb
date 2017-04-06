class AdminController < ApplicationController
  before_action :authenticate_user!

  layout "administration"

  def index
  end
end
