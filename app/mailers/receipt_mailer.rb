class ReceiptMailer < ApplicationMailer
  default from: "thanks@mg.climatecents.org"

  def send_receipt_email(email)
    @email = email
    mail(to: @email, subject: "Thank you for donating with Climate Cents")
  end
end
