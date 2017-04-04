class AdminController < ApplicationController
  require "stripe"

  def create
    subscription = Stripe::Plan.create(
      :amount => (params[:amount].to_i)*100,
      :interval => params[:interval],
      :name => params[:name],
      :currency => 'usd',
      :trial_plan => null,
      :id => SecureRandom.uuid # This ensures that the plan is unique in stripe
    )
    #Save the response to your DB
    flash[:notice] = "Plan successfully created"
    redirect_to '/subscription'
  end
end
