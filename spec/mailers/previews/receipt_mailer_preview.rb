# Preview all emails at http://localhost:3000/rails/mailers/receipt_mailer
class ReceiptMailerPreview < ActionMailer::Preview
  def receipt_email_preview
    ReceiptMailer.send_receipt_email(User.first)
  end
end
