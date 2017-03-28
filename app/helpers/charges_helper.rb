module ChargesHelper
  def get_project(project_id)
    Project.friendly.find(project_id)
  end

  def get_partner(project_id)
    project = get_project(project_id)
    Partner.find(project.partner_id)
  end

  def return_logo_image_url(partner_id)
    Image.where(partner_id: partner_id, logo: true).first.aws_url
  end

end
