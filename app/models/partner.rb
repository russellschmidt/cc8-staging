class Partner < ApplicationRecord
  belongs_to :location
  has_many :projects
  has_many :images
end
