class Project < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :partner

  has_many :campaigns

  has_attached_file :logo, styles: { standard: "80>x80" }
  has_attached_file :hero_image, styles: { large: "800>x664" }, default_url: ""
  has_attached_file :small_image, styles: { large: "350x200" }
end
