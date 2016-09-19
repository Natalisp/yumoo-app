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
    @recommendations = Recommendation.all
  end

  def rate
    # rate here
    if params[:score]
      rating = Rating.find_or_create_by(
        user_id: current_user.id,
        recommendation_id: params[:r_id]
      )
      rating.update(score: params[:score]) if rating
      flash[:notice] = "Your rating has been submitted. Thank you"
    end
    redirect_to recommendations_path
  end

  private
    def recommendation_path
      params.require(:recommendation).permit(:food_id, :mood_id, :rating)
    end
end
