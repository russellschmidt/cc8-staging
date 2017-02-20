class CreatePartners < ActiveRecord::Migration[5.0]
  def change
    create_table :partners do |t|
      t.references :location, foreign_key: true
      t.string :name
      t.text :blurb
      t.text :description

      t.timestamps
    end
  end
end
