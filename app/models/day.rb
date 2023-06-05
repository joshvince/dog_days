class Day < ApplicationRecord
  has_many :scratches, dependent: :destroy
  has_many :meals, dependent: :delete_all
  has_many :food, through: :meals
  has_many :doses, dependent: :delete_all
  has_many :medicines, through: :doses

  def self.ear_states
    [
      'L1:R1',
      'L1:R2',
      'L1:R3',
      'L2:R1',
      'L2:R2',
      'L2:R3',
      'L3:R1',
      'L3:R2',
      'L3:R3'
    ]
  end
end
