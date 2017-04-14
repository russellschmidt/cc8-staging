class Project < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :partner

  has_many :campaigns, dependent: :destroy

  validates :name, presence: true

  has_attached_file :logo, styles: { standard: "80x80>", large: "120x120>" },
    convert_options: { standard: "-strip", large: "-strip" },
    default_url: "https://s3.amazonaws.com/climatecents3/ClimateCents_2017Site_01_ProductionFile_20170114/logo_climatecents_med_white.png",
    storage: :s3,
    bucket: 'climate-cents',
    path: "projectLogo/:attachment/:id/:style/:filename.:extension"
  validates_attachment :logo, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  has_attached_file :hero_image, styles: { large: "800x664<" },
    convert_options: { large: "-strip" },
    default_url: "https://s3.amazonaws.com/climatecents3/ClimateCents_2017Site_01_ProductionFile_20170114/277H-compressor.png",
    storage: :s3,
    bucket: 'climate-cents',
    path: "projectHeroImage/:attachment/:id/:style/:filename.:extension"
  validates_attachment :hero_image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  has_attached_file :small_image, styles: { thumb: "350x200!" },
    convert_options: { thumb: "-strip" },
    default_url: "https://s3.amazonaws.com/climatecents3/ClimateCents_2017Site_01_ProductionFile_20170114/microcrafts570.jpg",
    storage: :s3,
    bucket: 'climate-cents',
    path: "projectSmallImage/:attachment/:id/:style/:filename.:extension"
  validates_attachment :small_image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

end
