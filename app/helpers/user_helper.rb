module UserHelper
  def get_donations
    email = current_user.email

    user = User.find_by(email: email)

    if user.present?
      donations = Donation.where(user_id: user.id)
      if donations.present?
        donations
      end
    end
  end

  def get_campaign(campaign_id)
    Campaign.find(campaign_id)
  end

  def get_total_co2(user_id)
    total = 0.0
    Donation.where(user_id: user_id).each do |donation|
      total = total + (donation.campaign_donation_in_cents.to_f/100) * (get_campaign(donation.campaign_id).co2_per_dollar.to_f)
    end
    total
  end

  def get_total_donation(user_id)
    Donation.where(user_id: user_id).sum(:campaign_donation_in_cents)
  end
end
