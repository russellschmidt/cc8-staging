module ProjectsHelper
  def return_hero_image_url(partner_id)
    images = Image.where(partner_id: partner_id)
    images.each do |image|
      if /(hero)/.match(image.aws_url)
        return image.aws_url
      end
    end
  end

  def return_logo_image_url(partner_id)
    # image = Image.where(partner_id: partner_id, logo: true).first.aws_url
    # if image.present?
    #   return image
    # else
      return "https://s3.amazonaws.com/climatecents3/ClimateCents_2017Site_01_ProductionFile_20170114/logo_climatecents_med_white.png"
    # end
  end

  def get_partner(partner_id)
    Partner.find(partner_id)
  end

  def get_current_campaign(project_id)
    Campaign.where(project_id: project_id, active: true).last
  end

  def percent_funded(campaign)
    if campaign.present?
      unless total_donations_for_campaign(campaign).nil? && campaign.dollar_goal_in_cents.nil?
        ((total_donations_for_campaign(campaign).to_f / campaign.dollar_goal_in_cents).to_f * 100).to_i
      end
    end
  end

  def days_remaining(campaign)
    if campaign.present?
      (campaign.end_date.to_date - Time.now.to_date).to_i
    end
  end

  def number_of_campaign_backers(campaign)
    if campaign.present?
      donations = Donation.where(campaign_id: campaign.id).distinct.count(:stripe_email)
    end
  end

  def annualCarbonReduction(campaign)
    if campaign.present?
      (campaign.co2_per_dollar * ( campaign.dollar_goal_in_cents / 100 ) * ((365) / ((campaign.end_date - campaign.start_date) / 60 / 60 / 24  ))).to_i
    end
  end

end
