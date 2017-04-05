class Project < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :partner

  has_many :campaigns

  has_attached_file :logo, styles: { standard: "80>x80" },
    default_url: "https://s3.amazonaws.com/climatecents3/ClimateCents_2017Site_01_ProductionFile_20170114/logo_climatecents_med_white.png",
    storage: :s3,
    bucket: 'climatecents3',
    path: "projectLogo/:attachment/:id/:style/:filename.:extension"
  validates_attachment :logo, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  has_attached_file :hero_image, styles: { large: "800>x664" },
    default_url: "https://s3.amazonaws.com/climatecents3/ClimateCents_2017Site_01_ProductionFile_20170114/277H-compressor.png",
    storage: :s3,
    bucket: 'climatecents3',
    path: "projectHeroImage/:attachment/:id/:style/:filename.:extension"
  validates_attachment :hero_image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  has_attached_file :small_image, styles: { large: "350x200" },
    default_url: "https://s3.amazonaws.com/climatecents3/ClimateCents_2017Site_01_ProductionFile_20170114/microcrafts570.jpg",
    storage: :s3,
    bucket: 'climatecents3',
    path: "projectSmallImage/:attachment/:id/:style/:filename.:extension"
  validates_attachment :small_image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

end
