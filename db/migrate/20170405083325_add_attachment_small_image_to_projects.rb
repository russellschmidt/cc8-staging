class AddAttachmentSmallImageToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :small_image
    end
  end

  def self.down
    remove_attachment :projects, :small_image
  end
end
