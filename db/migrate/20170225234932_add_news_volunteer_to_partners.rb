class AddNewsVolunteerToPartners < ActiveRecord::Migration[5.0]
  def change
    add_column :partners, :news, :text
    add_column :partners, :volunteer, :text
  end
end
