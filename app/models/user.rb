class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
<<<<<<< HEAD

  has_many :recommendations
=======
        
  has_many :users_recommendations
  has_many :recommendations, through: :users_recommendations
>>>>>>> controllers
  has_many :foods, through: :recommendations
  has_many :moods, through: :recommendations
  has_many :ratings

  validates_uniqueness_of :username

  def current_mood
    Mood.find_by(id: current_mood_id)
  end

end
