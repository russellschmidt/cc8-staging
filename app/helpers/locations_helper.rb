module LocationsHelper
  def partners_by_location(location)
    Partner.where(location_id: location.id)
  end

  def projects_by_partner(partner)
    Project.where(partner_id: partner.id)
  end

  def campaigns_by_project(project)
    Campaign.where(project_id: project.id)
  end

  def active_campaigns_by_partner(partner)
    active_campaigns = []
    projects = projects_by_partner(partner)
    projects.each do |project|
      campaigns = campaigns_by_project(project)
      campaigns.each do |campaign|
        if campaign.end_date > Time.now
          active_campaigns << campaign
        end
      end
    end
    active_campaigns.count
  end

end
