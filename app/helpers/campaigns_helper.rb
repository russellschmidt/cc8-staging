module CampaignsHelper
  def campaign_active_inactive(campaign)
    if campaign.end_date > Time.now
      "active"
    else
      "inactive"
    end
  end
end
