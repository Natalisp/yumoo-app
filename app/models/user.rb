class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :recommendations
  has_many :foods, through: :recommendations
  has_many :moods, through: :recommendations
  has_many :ratings
end
