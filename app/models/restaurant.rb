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
   "#{format_category}#{format_rating}#{format_price_range}#{format_address}#{format_phone}"
  end

  def format_category
    self.category.nil? ? "" : "Category: #{self.category.gsub("_"," ").downcase}"
  end

  def format_rating
    self.rating.nil? ? "" : "; Rating: #{self.rating.gsub(/\sstar rating/,"")}"
  end

  def format_price_range
    if self.price.nil?
      ""
    else
      price_range = "; Price Range: "
      if self.price.match(/\$/).nil?
        self.price.to_i.times{price_range << "$"}
      else
        price_range = "#{price_range}#{self.price}"
      end
      price_range
    end
  end

  def format_address
    if self.source == "Yelp"
      quasimodo = self.address.match(/([A-Z]([a-z])*)((?=[A-Z])\w*)/)
      formatted = self.address.gsub(quasimodo[0],"#{quasimodo[1]}, #{quasimodo[3]}")
      "; Address: #{formatted}"
    else
      "; Address: #{self.address}"
    end
  end

  def format_phone
    self.phone.nil? ? "" : "; Phone: #{self.phone}"
  end

end
