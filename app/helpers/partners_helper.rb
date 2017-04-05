module PartnersHelper
  def active_campaigns_by_project(project)
    active_campaigns = []
    campaigns = campaigns_by_project(project)

    campaigns.each do |campaign|
      if campaign.end_date > Time.now
        active_campaigns << campaign
      end
    end
    active_campaigns.count
  end
end
