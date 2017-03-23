class ReceiptMailer < ApplicationMailer
  default from: "thanks@mg.climatecents.org"

  def send_receipt_email(email, campaign, co2)
    @email = email
    @campaign = campaign
    @co2 = co2

    mail(to: @email, subject: "Thank you for donating with Climate Cents")
  end
end
