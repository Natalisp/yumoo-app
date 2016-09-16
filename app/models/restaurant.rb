class Restaurant < ApplicationRecord
  
  def self.yelp_instances(restaurants)
    restaurants.each do |rest|
      Restaurant.create(rest)
    end
    Restaurant.all
  end

end
