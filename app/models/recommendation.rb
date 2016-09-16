class Recommendation < ApplicationRecord
  belongs_to :food
  belongs_to :user
  belongs_to :mood

  has_many :ratings


  # def rating
  #   @rating = ratings.map do |rating|
  #     rating.score
  #   end.reduce(:+).fdiv(arr.size)
  # end
end
