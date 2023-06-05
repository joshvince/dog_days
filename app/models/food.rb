class Food < ApplicationRecord
  self.table_name = 'food'

  has_many :meals
  has_many :days, through: :meals
end
