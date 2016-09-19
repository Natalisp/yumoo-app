class Mood < ApplicationRecord
  has_many :recommendations
  has_many :foods, through: :recommendations
  has_many :puns
end
