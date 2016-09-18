class ProfileController < ApplicationController

  def home
    #user info will be shown on the header
    @user = current_user
    #the submit button will send the request to ProfileController#Mood action
    @moods = Mood.all
    # previous food, mood, rating will render at the bottom of the page below the Mood form
    # @recommendation = current_user.recommend_food(current_user.moods.last) if current_user.moods.last
    if params[:mood_id]
      mood = Mood.find_by(id: params[:mood_id])
      if mood
        # byebug
        @user.update(current_mood_id: mood.id)
        @recommendations = Recommendation.recommend(mood, 5)
      end
    end
  end

  def history
   #recommendations partial
  end

end

# save recommendation
#UsersRecommendation.create(user_id: current_user.id, recommendation_id: @recommendations.first.id)
# @recommendations = Recommendation.recommend(mood, 5)
