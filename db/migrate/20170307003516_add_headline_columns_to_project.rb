class AddHeadlineColumnsToProject < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :overview_headline, :string
    add_column :projects, :science_headline, :string
    add_column :projects, :news_headline, :string
    add_column :projects, :volunteer_headline, :string
  end
end
