require 'nokogiri'
require 'open-uri'
require 'pry'
class Scraper

  attr_reader :base_address, :search_fragment, :location_fragment
  attr_accessor :scrape_address

  def initialize
    @base_address = "https://www.yelp.com"
    @search_fragment = "/search?find_desc="
    @location_fragment = "&find_loc="
  end

  #possible search filters here or in a separate function?
  #https://www.yelp.com/search?find_desc=banana+split&find_loc=New+York%2C+NY
  #change location into a zip code here
  def parse_address(food_item, location="New York, NY")
    @scrape_address = "#{@base_address}#{@search_fragment}#{food_item}#{@location_fragment}#{location}".gsub(" ", "+").gsub(",","%2C")
  end

  def restaurant_options

    raw_text = Nokogiri::HTML(open(@scrape_address, "User-Agent" => "Mozilla/5.0 (X11; CrOS i686 12.433.216) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.105 Safari/534.30"))
    area_of_interest = raw_text.css(".regular-search-result")

    #name
    area_of_interest.css(".indexed-biz-name")[0].css("span").text
    #rating
    area_of_interest.css(".rating-large")[0].css("i").attribute("title").value
    #number of reviews on yelp
    area_of_interest.css(".review-count.rating-qualifier")[0].text.match(/\d+\sreviews/)[0]
    #price category
    area_of_interest.css(".business-attribute.price-range")[0].text
    # restaurant category
    area_of_interest.css(".category-str-list")[0].text.gsub(/\s{2,}/,"")
    #neighborhood
    area_of_interest.css(".neighborhood-str-list")[0].text.gsub(/\s{2,}/,"")
    #address unformatted
    area_of_interest.css("address")[0].text.gsub(/\s{2,}/,"")
    #phone
    area_of_interest.css(".biz-phone")[0].text.gsub(/\s{2,}/,"")


    #webpage

    #menupage


    binding.pry
    #return data in a hash that can be read to restaurant model or view via controller?
  end



###Quick calls For testing
scr = Scraper.new
scr.parse_address("banana split")
puts scr.scrape_address
scr.restaurant_options


###Random memo notes here:
  ##General New York Area
  #https://www.yelp.com/search?find_desc=banana+split&find_loc=New+York%2C+NY&ns=1
  ##Financial District only
#https://www.yelp.com/search?find_desc=banana+split&find_loc=New+York,+NY&start=0&l=p:NY:New_York:Manhattan:Financial_District
end
