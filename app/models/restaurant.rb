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
end
