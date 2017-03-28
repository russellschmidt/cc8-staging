module ChargesHelper
  def get_project(project_id)
    Project.friendly.find(project_id)
  end

  def get_partner_from_project_id(project_id)
    project = get_project(project_id)
    Partner.find(project.partner_id)
  end

end
