class Day < ApplicationRecord
  has_many :scratches, dependent: :destroy

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
