class Food < ApplicationRecord
  self.table_name = 'food'

  has_many :meals
  has_many :food, through: :meals
end
