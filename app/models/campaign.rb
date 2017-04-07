class Campaign < ApplicationRecord
  belongs_to :project

  has_many :donations

  validates :name, presence: true
  validates :co2_per_dollar, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :start_date_must_be_smaller_than_end_date, on: [:create, :update]


  def start_date_must_be_smaller_than_end_date
    if start_date.present? && end_date.present?
      if start_date > end_date
        errors.add(:start_date, "Your end must come after your beginning. Such is the prison we Humans inhabit, a jail of linear time.")
      end
    end
  end

end
