class ProfileController < ApplicationController

  def home
    #user info will be shown on the header
    if user_signed_in?
      @user = current_user
    end
    #the submit button will send the request to ProfileController#Mood action
    @moods = Mood.all
    # previous food, mood, rating will render at the bottom of the page below the Mood form
    # @recommendation = current_user.recommend_food(current_user.moods.last) if current_user.moods.last


    
    ## dream features
    # @history = @user.recommendations
  end

  def recommended
  end

  def mood
    @mood = Mood.find_by(id: params[:id])
    current_user.moods << @mood if @mood
    redirect_to root_path
  end  
end
