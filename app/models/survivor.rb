class Survivor < ActiveRecord::Base

  validates :name, presence: true
  validates :age, presence: true
  validates :gender, presence: true
  validates :lastLatitude, presence: true
  validates :lastLongitude, presence: true

  has_one :inventory, dependent: :destroy
  has_many :contamination_reports
  has_many :reports


  def infected_survivor?
    contamination_reports.length >= 3
  end
end
