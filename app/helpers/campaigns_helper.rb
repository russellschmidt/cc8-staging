module CampaignsHelper
  def campaign_active_inactive(campaign)
    if (campaign.end_date > Time.now)
      distance_of_time_in_words_to_now(campaign.end_date)
    else
      "inactive"
    end
  end

  def campaign_percent_to_goal(campaign)
    goal = campaign.dollar_goal_in_cents.to_f
    sprintf('%.1f', (campaign_raised_to_date_in_cents(campaign)/goal)*100)
  end

  def campaign_raised_to_date_in_cents(campaign)
    Donation.where(campaign_id: campaign.id).sum(:campaign_donation_in_cents).to_f
  end

  def tips_raised_to_date_in_cents(campaign)
    Donation.where(campaign_id: campaign.id).sum(:tip_in_cents).to_f
  end
end
