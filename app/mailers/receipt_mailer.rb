class ReceiptMailer < ApplicationMailer
  default from: "thanks@mg.climatecents.org"

  def send_receipt_email(email, campaign, co2)
    @email = email
    @campaign = campaign
    @co2 = co2

    mail(to: @email, subject: "Thank you for donating with Climate Cents")
  end

  def mail_sorter(project)
    # if project match
      # call correct mail_project_receipt function
    # else
      # call send_receipt_email
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
