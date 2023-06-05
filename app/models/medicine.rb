class Medicine < ApplicationRecord
  has_many :doses, dependent: :delete_all
  has_many :days, through: :doses
end
