class Recommendation < ApplicationRecord
  belongs_to :food
  belongs_to :user
  belongs_to :mood
end
