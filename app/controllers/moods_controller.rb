class MoodsController < ApplicationController

  def create
    
  end

  def mood_params
    params.require(:mood).permit()
  end
end
