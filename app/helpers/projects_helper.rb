module ProjectsHelper
  def return_hero_image_url(partner_id)
    # 'https://s3.amazonaws.com/climatecents3/HighResProject/mend-project-hero-1024x680.jpg'
    # images = Image.where(partner_id: partner_id)
    # images.each do |image|
    #   if /(hero)/.match(image.aws_url)
    #     return image.aws_url
    #   else
    #     return nil
    #   end
    # end
    images = Image.where(partner_id: partner_id)
    images.each do |image|
      if /(hero)/.match(image.aws_url)
        return image.aws_url
      end
    end
  end

  def return_logo_image_url(partner_id)
    images = Image.where(partner_id: partner_id)
    images.each do |image|
      if image.logo
        return image.aws_url
      else
        return nil
      end
    end
  end

  def get_partner(partner_id)
    Partner.find(partner_id)
  end

end
