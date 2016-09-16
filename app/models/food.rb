class Food < ApplicationRecord
  has_many :recommendations
  has_many :moods, through: :recommendations
end
