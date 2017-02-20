class Campaign < ApplicationRecord
  belongs_to :project

  has_many :donations
end
