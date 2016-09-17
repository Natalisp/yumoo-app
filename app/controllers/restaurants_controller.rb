class RestaurantsController < ApplicationController

  def new_seach
  end

  ####Add a route or procedure for keeping the DB clean between searches
  ####until we are ready to store and connect them to other tables

  def find
    ###restaurants from the scraper
    sr = Scraper.new
    sr.parse_address(params[:food_item], params[:zip])
    sr.restaurant_options
    ###restaurants from Google api
    google_item = params[:food_item].gsub(/\s/,"+")
    a = Google.new.call(params[:zip],google_item)
    # binding.pry
    @restaurants = Restaurant.all  #=> this instance variable will be directed to whatever view needs to render the _restaurant.html.erb partial
    # redirect_to #where?
  end

end
