class CreateDonations < ActiveRecord::Migration[5.0]
  def change
    create_table :donations do |t|
      t.references :user, foreign_key: true
      t.string :stripe_customer_id
      t.integer :total_in_cents
      t.integer :tip_in_cents
      t.integer :campaign_donation_in_cents

      t.timestamps
    end
  end
end
