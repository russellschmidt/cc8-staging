module HomeHelper
  def get_location_partners(location)
    Partner.where(location_id: location.id)
  end

  def get_partner_projects(partner)
    Project.where(partner_id: partner.id)
  end

  def get_project_campaigns(project)
    Campaign.where(project_id: project.id, active: true)
  end
end
