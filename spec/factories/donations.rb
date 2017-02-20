FactoryGirl.define do
  factory :donation do
    user nil
    stripe_customer_id "MyString"
    total_in_cents 1
    tip_in_cents 1
    campaign_donation_in_cents 1
  end
end
