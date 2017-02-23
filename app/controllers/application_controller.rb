class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  @content = "Support local, vetted projects to fight climate change in your community"
end
