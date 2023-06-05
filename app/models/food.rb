class Food < ApplicationRecord
  self.table_name = 'food'

  has_many :meals, dependent: :delete_all
  has_many :days, through: :meals
end
