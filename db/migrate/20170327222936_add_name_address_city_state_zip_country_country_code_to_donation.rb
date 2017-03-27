class AddNameAddressCityStateZipCountryCountryCodeToDonation < ActiveRecord::Migration[5.0]
  def change
    add_column :donations, :name, :string
    add_column :donations, :address, :string
    add_column :donations, :city, :string
    add_column :donations, :state, :string
    add_column :donations, :zip, :string
    add_column :donations, :country, :string
    add_column :donations, :countryCode, :string
  end
end
