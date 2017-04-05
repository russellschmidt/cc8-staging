class AddAttachmentHeroImageToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :hero_image
    end
  end

  def self.down
    remove_attachment :projects, :hero_image
  end
end
