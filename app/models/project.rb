class Project < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :partner

  has_many :campaigns
end
