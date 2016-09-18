require 'uri'
require 'json'
require 'pry'
require 'net/http'
require 'csv'

class Google

  def call(zipcode="10027", keyword="burger")
    if valid?(zipcode)
      parse(keyword)
    else
      return false
    end
  end

  def valid?(zipcode)
    #check if the zipcode is in the csv file
    CSV.foreach('./app/models/zipcode/zipcode.csv') do |row|
      if row[0] == "#{zipcode}"
        @cordinates = "#{row[3]},#{row[4]}"
        return true
      end
    end
  end

  def parse(keyword)
    url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=#{@cordinates}&radius=2000&keyword=#{keyword}&types=food&key=AIzaSyDrPnWTc2lB5VL__4mFy6fU6kFCOVIU0KU"
    uri = URI(url)
    a = Net::HTTP.get(uri)
    @places_hash = JSON.parse(a)
    # binding.pry
    mass_hash
  end

  def mass_hash
    restaurants = @places_hash["results"].map do |result|
      hash = Hash.new()
      hash[:name] = result["name"]
      hash[:rating] = result["rating"]
      hash[:category] = result["types"][0]
      hash[:address] = result["vicinity"]
      hash[:price] = result["price_level"]
      hash[:link] = get_the_link("https://maps.googleapis.com/maps/api/place/details/json?placeid=#{result["place_id"]}&key=AIzaSyDrPnWTc2lB5VL__4mFy6fU6kFCOVIU0KU")
      hash[:source] = "Google"
      hash
    end
    model_generator(restaurants)
  end

  def get_the_link(link_url)
    uri = URI(link_url)
    a = Net::HTTP.get(uri)
    link_hash = JSON.parse(a)
    link_hash["result"]["url"]
  end

  def model_generator(restaurants)
    Restaurant.create_instances(restaurants)
  end
end
# a = Google.new.call("10031")
