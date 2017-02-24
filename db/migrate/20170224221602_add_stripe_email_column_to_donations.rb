class AddStripeEmailColumnToDonations < ActiveRecord::Migration[5.0]
  def change
    add_column :donations, :stripe_email, :string
  end
end
