class ProfileController < ApplicationController

  def home
    #user info will be shown on the header
    @user = current_user
    #the submit button will send the request to ProfileController#Mood action
    @moods = Mood.all
    # previous food, mood, rating will render at the bottom of the page below the Mood form
    # @recommendation = current_user.recommend_food(current_user.moods.last) if current_user.moods.last

    mood = @user.moods.last
    @recommendations = Recommendation.recommend(mood, 5) if mood
  end

  def recommend
    mood = Mood.find_by(id: params[:mood_id])
    @recommendations = Recommendation.recommend(mood, 5) if mood
    redirect_to root_path( @recommendations )
  end  
end
