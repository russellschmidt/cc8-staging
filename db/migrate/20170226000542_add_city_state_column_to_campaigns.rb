class AddCityStateColumnToCampaigns < ActiveRecord::Migration[5.0]
  def change
    add_column :campaigns, :city, :string
    add_column :campaigns, :state, :string
  end
end
