class Project < ApplicationRecord
  belongs_to :partner

  has_many :campaigns
end
