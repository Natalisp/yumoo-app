class RecommendationsController < ApplicationController
  # create recommendation
  def create
    Recommendation.create(recommendation_params)
    redirect_to :rating_path
  end

  # rate recommendation
  def update
    @recommendation = Recommendation.find_by(
      food_id: params[:recommendation][:food_id],
      mood_id: params[:recommendation][:mood_id]
    )
    @recommendation.update(rating: params[:recommendation][:rating]) if @recommendation
  end

  def index
    @recommendation = Recommendation.all.sample
  end

  private
    def recommendation_path
      params.require(:recommendation).permit(:food_id, :mood_id, :rating)
    end
end
