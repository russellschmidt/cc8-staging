class ReceiptMailer < ApplicationMailer
  default from: "hello@climatecents.org"

  def send_receipt_email(user)
    @user = user
    mail(to: @user.email, subject: "Thank you for donating with Climate Cents")
  end
end
