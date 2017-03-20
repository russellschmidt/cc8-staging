module HomeHelper
  def get_location_partners(location)
    # Partner.where(location_id: location.id)

    @partners = Partner.where(location_id: location.id).joins(projects: :campaigns).order("end_date asc")

  end

  def order_partner_by_campaign_expiry(location)

  end

  def get_partner_projects(partner)
    Project.where(partner_id: partner.id)
  end

  def get_project_campaigns(project)
    Campaign.where(project_id: project.id, active: true)
  end

  def total_donations_for_campaign(campaign)
    Donation.where(campaign_id: campaign.id).sum(:campaign_donation_in_cents)
  end

  def percent_funded(campaign)
    unless total_donations_for_campaign(campaign).nil? && campaign.dollar_goal_in_cents.nil?
      ((total_donations_for_campaign(campaign).to_f / campaign.dollar_goal_in_cents).to_f * 100).to_i
    end
  end

  def days_remaining(campaign)
    (campaign.end_date.to_date - Time.now.to_date).to_i
  end

  def number_of_campaign_backers(campaign)
    donations = Donation.where(campaign_id: campaign.id).distinct.count(:stripe_email)
  end

  def return_350x200_image_url(partner_id)
    images = Image.where(partner_id: partner_id)
    images.each do |image|
      if /[350x200]/.match(image.aws_url)
        return image.aws_url
      else
        return nil
      end
    end
  end

end
