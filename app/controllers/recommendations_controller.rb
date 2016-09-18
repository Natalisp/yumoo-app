class RecommendationsController < ApplicationController
  def create
    Recommendation.create(recommendation_params)
    redirect_to :rating_path
  end

  def update
    @recommendation = Recommendation.find_by(
      food_id: params[:recommendation][:food_id],
      mood_id: params[:recommendation][:mood_id]
    )
    @recommendation.update(rating: params[:recommendation][:rating]) if @recommendation
  end

  def index
    @foods = Food.all.sample(9)
    @moods = Mood.all.sample(9)
    #post
    @rating = Rating.create(params[:rating])
    current_user.ratings << @rating
  end


  private
    def recommendation_path
      params.require(:recommendation).permit(:food_id, :mood_id, :rating)
    end
end
