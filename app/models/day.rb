class Day < ApplicationRecord
  has_many :scratches, dependent: :destroy
end
