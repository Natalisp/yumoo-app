class Restaurant < ApplicationRecord

  def self.create_instances(restaurants)
    restaurants.each do |rest|
      Restaurant.create(rest)
    end
    # binding.pry
    # Restaurant.all
  end

  # def self.api_instances(restaurants)
  #   restaurants.each do |rest|
  #     Restaurant.create(rest)
  #   end
  #   Restaurant.all
  # end

  def print_it_all
   "Name: #{self.name}; Category: #{self.category}; Rating: #{self.rating}; Price Range: #{self.price}; Address: #{self.address}; Phone: #{self.phone}"
 end
end
