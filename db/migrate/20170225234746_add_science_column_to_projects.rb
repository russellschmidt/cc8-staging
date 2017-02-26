class AddScienceColumnToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :science, :text
  end
end
