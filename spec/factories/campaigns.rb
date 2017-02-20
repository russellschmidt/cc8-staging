FactoryGirl.define do
  factory :campaign do
    project nil
    name "MyString"
    description "MyText"
    dollar_goal_in_cents 1
    start_date "2017-02-19 17:13:26"
    end_date "2017-02-19 17:13:26"
    co2_per_dollar 1
    active false
  end
end
