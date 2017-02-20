class Partner < ApplicationRecord
  belongs_to :location
  has_many :projects
end
