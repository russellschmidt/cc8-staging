class CreateCampaigns < ActiveRecord::Migration[5.0]
  def change
    create_table :campaigns do |t|
      t.references :project, foreign_key: true
      t.string :name
      t.text :description
      t.integer :dollar_goal_in_cents
      t.datetime :start_date
      t.datetime :end_date
      t.integer :co2_per_dollar
      t.boolean :active

      t.timestamps
    end
  end
end
