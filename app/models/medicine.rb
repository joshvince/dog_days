class Medicine < ApplicationRecord
  has_many :doses
  has_many :days, through: :doses
end
