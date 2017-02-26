class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :aws_url
      t.references :partner, foreign_key: true
      t.boolean :logo

      t.timestamps
    end
  end
end
