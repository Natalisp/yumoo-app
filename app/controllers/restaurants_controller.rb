class RestaurantsController < ApplicationController
  ####Procedure in the beginning of find route is for keeping the DB clean between searches
  ####until we are ready to store and connect them to other tables

  def new_seach
  end

  def find
    # binding.pry
    #****** TABLE RESET SEQUENCE HERE ******#
    Restaurant.destroy_all
    sql = "UPDATE sqlite_sequence SET seq = 1 WHERE name = 'restaurants';"
    ActiveRecord::Base.connection.execute(sql)
    #***************************************#

    #persist zip
    current_user.zip = params[:zip]
    current_user.save

    ###restaurants from the scraper
    @message = Scraper.new.scrape_it(params[:food_item], params[:zip])
    ###restaurants from Google api
    google_item = params[:food_item].gsub(/\s/,"+")
    Google.new.call(params[:zip],google_item)
    # binding.pry
    @google_restaurants = Restaurant.google_restaurants #=> this instance variable will be directed to whatever view
    @restaurants = Restaurant.all
    #needs to render the _restaurant.html.erb partial, currently 'restaurants/find.html.erb'
    @yelp_restaurants = Restaurant.yelp_restaurants
    if @message[1][:error] == 0
    else
      if !@message[1][:error].empty? && @restaurants.empty?
          flash[:error] =  @message[1][:error]
          redirect_to root_path
      end
    end
  end


end
