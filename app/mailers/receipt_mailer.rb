class ReceiptMailer < ApplicationMailer
  default from: "thanks@mg.climatecents.org"

  def send_receipt_email( donation_object, co2 )
    @email = donation_object.customer.email
    @campaign = Campaign.find(donation_object.donation.campaign_id)
    @co2 = co2

    mail(to: @email, subject: "Thank you for donating with Climate Cents")
  end

  def mail_sorter(donation_object, co2)
    project = Project.Find(Campaign.find(donation_object.donation.campaign_id).project_id)
    if project.name.present?
    # if project match
      case project.name
      when "Bring Back the Bay's Kelp Forests"
        mail_kelp_receipt(donation_object, co2)
      when "Urban Farming in Pacoima"
        mail_mend_receipt(donation_object, co2)
      when "Recycle Electronics, Rebuild Lives"
        mail_homeboy_receipt(donation_object, co2)
      when "Solar Panels for Safe Place for Youth"
        mail_grid_receipt(donation_object, co2)
      else
        send_receipt_email(donation_object, co2)
    else
      # call send_receipt_email
      send_receipt_email(donation_object, co2)
    end
    # end
  end

  def mail_kelp_receipt()
  end

  def mail_mend_receipt()
  end

  def mail_homeboy_receipt()
  end

  def mail_grid_receipt()
  end

end
