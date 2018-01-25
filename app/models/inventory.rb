class Inventory < ActiveRecord::Base
  belongs_to :survivor

  validates :water, presence: true
  validates :food, presence: true
  validates :medication, presence: true
  validates :ammunition, presence: true
end
