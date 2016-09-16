require 'uri'
require 'json'
require 'pry'
require 'net/http'
require 'csv'

class Api

  def call(zipcode, keyword)
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
    url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=#{@cordinates}&radius=1000&keyword=#{keyword}&types=food&key=AIzaSyDrPnWTc2lB5VL__4mFy6fU6kFCOVIU0KU"
    uri = URI(url)
    a = Net::HTTP.get(uri)
    @places_hash = JSON.parse(a)
  end

end
# a = Api.new.call("10004")
# puts a
