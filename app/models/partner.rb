class Partner < ApplicationRecord
  belongs_to :location

  has_many :projects, dependent: :destroy
  has_many :images, dependent: :destroy

  validates :name, presence: :true
end
