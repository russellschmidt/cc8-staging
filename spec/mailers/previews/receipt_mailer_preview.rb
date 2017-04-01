# Preview all emails at http://localhost:3000/rails/mailers/receipt_mailer
class ReceiptMailerPreview < ActionMailer::Preview

  def receipt_email_preview
    @donation_object = {
      email:                      'bdraper@mcrn.mil',
      name:                       'Bobbie Draper',
      total_in_cents:             1000,
      tip_in_cents:               100,
      campaign_donation_in_cents: 900,
      campaign_id:                Campaign.last,
      donation_created:           Time.now
    }
    @co2 = 300
    ReceiptMailer.receipt_email(@donation_object, @co2)
  end

  def kelp_email_preview
    email = 'bdraper@mcrn.mil'
    fullname = 'Bobbie Draper'
    total_in_cents = 1000
    tip_in_cents = 100
    campaign_donation_in_cents = 900
    donation_created = Time.now
    co2 = 300
    ReceiptMailer.kelp_receipt(email, co2, fullname, total_in_cents, tip_in_cents, campaign_donation_in_cents, donation_created )
  end

  def grid_email_preview
    @donation_object = {
      email:                      'bdraper@mcrn.mil',
      name:                       'Bobbie Draper',
      total_in_cents:             1000,
      tip_in_cents:               100,
      campaign_donation_in_cents: 900,
      campaign_id:                Campaign.last,
      donation_created:           Time.now
    }
    @co2 = 300
    ReceiptMailer.grid_receipt(@donation_object, @co2)
  end

  def homeboy_email_preview
    @donation_object = {
      email:                      'bdraper@mcrn.mil',
      name:                       'Bobbie Draper',
      total_in_cents:             1000,
      tip_in_cents:               100,
      campaign_donation_in_cents: 900,
      campaign_id:                Campaign.last,
      donation_created:           Time.now
    }
    @co2 = 300
    ReceiptMailer.homeboy_receipt(@donation_object, @co2)
  end

  def mend_email_preview
    @donation_object = {
      email:                      'bdraper@mcrn.mil',
      name:                       'Bobbie Draper',
      total_in_cents:             1000,
      tip_in_cents:               100,
      campaign_donation_in_cents: 900,
      campaign_id:                Campaign.last,
      donation_created:           Time.now
    }
    @co2 = 300
    ReceiptMailer.mend_receipt(@donation_object, @co2)
  end
end
