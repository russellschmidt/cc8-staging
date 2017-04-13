class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  @content = "Support local, vetted projects to fight climate change in your community"

  def after_sign_in_path_for(resource)
    admin_index_path
  end
end
