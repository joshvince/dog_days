class Dose < ApplicationRecord
  belongs_to :day
  belongs_to :medicine
end
