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
    Image.where(partner_id: partner_id, logo: true).first.aws_url
  end

  def get_partner(partner_id)
    Partner.find(partner_id)
  end

end
