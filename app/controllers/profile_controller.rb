class ProfileController < ApplicationController

  def home
    @user = current_user
    #user info will be shown on the header
    @mood = Mood.new #new mood form will render in the home page
    #the submit button will send the request to ProfileController#Mood action
    @history = @user.recommendations
    # previous food, mood, rating will render at the bottom of the page below the Mood form
    @recommendation = current_user.recommend_food(current_user.moods.last) if current_user.moods.last#
  end
  
  def mood
    @mood = Mood.find_by(id: params[:id])
    current_user.moods << @mood if @mood
    redirect_to root_path
  end


end
