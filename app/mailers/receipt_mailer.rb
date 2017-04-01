class ReceiptMailer < ApplicationMailer
  default from: "thanks@mg.climatecents.org"

  def kelp_receipt(email, co2, fullname, totalDonation, donationToTip, donationToCampaign, donationCreated)
    @email = email
    @co2 = co2
    @fullname = fullname
    @total = totalDonation
    @tip = donationToTip
    @gift = donationToCampaign
    @timestamp = donationCreated
    mail(to: @email, subject: "Thank you for donating with Climate Cents")
  end

  def mend_receipt(email, co2, fullname, totalDonation, donationToTip, donationToCampaign, donationCreated)
    @email = email
    @co2 = co2
    @fullname = fullname
    @total = totalDonation
    @tip = donationToTip
    @gift = donationToCampaign
    @timestamp = donationCreated
    mail(to: @email, subject: "Thank you for donating with Climate Cents")
  end

  def homeboy_receipt(email, co2, fullname, totalDonation, donationToTip, donationToCampaign, donationCreated)
    @email = email
    @co2 = co2
    @fullname = fullname
    @total = totalDonation
    @tip = donationToTip
    @gift = donationToCampaign
    @timestamp = donationCreated
    mail(to: @email, subject: "Thank you for donating with Climate Cents")
  end

  def grid_receipt(email, co2, fullname, totalDonation, donationToTip, donationToCampaign, donationCreated)
    @email = email
    @co2 = co2
    @fullname = fullname
    @total = totalDonation
    @tip = donationToTip
    @gift = donationToCampaign
    @timestamp = donationCreated
    mail(to: @email, subject: "Thank you for donating with Climate Cents")
  end

  def receipt_email(email, co2, fullname, totalDonation, donationToTip, donationToCampaign, donationCreated)
    @email = email
    @co2 = co2
    @fullname = fullname
    @total = totalDonation
    @tip = donationToTip
    @gift = donationToCampaign
    @timestamp = donationCreated
    mail(to: @email, subject: "Thank you for donating with Climate Cents")
  end

  def test_email(email)
    @email = email
    mail(to: @email, subject: "This is a send_test_email")
  end

end
