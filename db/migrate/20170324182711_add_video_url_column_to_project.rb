class AddVideoUrlColumnToProject < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :videoUrl, :string
  end
end
