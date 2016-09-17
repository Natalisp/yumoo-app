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
    "Name: #{self.name}\nCategory:#{self.category}\nRating:#{self.rating}\nPrice Range:#{self.price}\nAddress:\n#{self.address}\nPhone:#{self.phone}"
  end

end
