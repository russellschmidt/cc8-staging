module CampaignsHelper
  def campaign_active_inactive(campaign)
    if campaign.end_date > Time.now
      "active"
    else
      "inactive"
    end
  end

  def campaign_percent_to_goal(campaign)
    goal = campaign.dollar_goal_in_cents.to_f
    total_to_date = Donation.where(campaign_id: campaign.id).sum(:campaign_donation_in_cents).to_f
    sprintf('%.1f', (total_to_date/goal)*100)
  end
end
