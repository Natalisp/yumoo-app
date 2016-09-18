def make_seeds
  make_users # uncomment this when
  make_foods
  make_moods
  make_recommendations
  make_ratings
end

def make_users
  User.destroy_all
  User.create!(username: 'Nata', email: 'nata@aol.com', password: 'nnnnnn')
  User.create!(username: 'Satu', email: 'satu@aol.com', password: 'ssssss')
  User.create!(username: 'Paige', email: 'paige@aol.com', password: 'pppppp')
  User.create!(username: 'Aehmet', email: 'ahhhmed@aol.com', password: 'aaaaaa')
  User.create!(username: 'Dereck', email: 'nick@aol.com', password: 'dddddd')
  User.create!(username: 'Natasha4', email: 'natasha@aol.com', password: 'nnnnnn')
  User.create!(username: 'SatuB', email: 'satub@aol.com', password: 'ssssss')
  User.create!(username: 'PaigeL', email: 'paigeL@aol.com', password: 'pppppp')
  User.create!(username: 'AehmetF', email: 'ahhhmedf@aol.com', password: 'aaaaaa')
  User.create!(username: 'DereckF', email: 'nickf@aol.com', password: 'dddddd')
  User.create!(username: 'Natali', email: 'natali@aol.com', password: 'nnnnnn')
  User.create!(username: 'SatuQ', email: 'satuq@aol.com', password: 'ssssss')
  User.create!(username: 'PaigeQ', email: 'paigeq@aol.com', password: 'pppppp')
  User.create!(username: 'AehmetQ', email: 'ahhhmedq@aol.com', password: 'aaaaaa')
  User.create!(username: 'DereckQ', email: 'nickq@aol.com', password: 'dddddd')
  User.create!(username: 'Natasha@', email: 'natashaq@aol.com', password: 'nnnnnn')
  User.create!(username: 'SatuBQ', email: 'satubq@aol.com', password: 'ssssss')
  User.create!(username: 'PaigeLQ', email: 'paigelq@aol.com', password: 'pppppp')
  User.create!(username: 'AehmetFQ', email: 'ahhhmedfq@aol.com', password: 'aaaaaa')
  User.create!(username: 'DereckFQ', email: 'nickfq@aol.com', password: 'dddddd')
  User.create!(username: 'DereckMQ', email: 'nickfmq@aol.com', password: 'dddddd')
end

def make_foods
  Food.destroy_all
  Food.create(name: 'Beef Au Poivre Empanadas')
  Food.create(name: 'Mezcal Chipotle Infused BBQ Chicken')
  Food.create(name: 'Mole Poblano')
  Food.create(name: 'Nurse Ginger Green Juice')
  Food.create(name: 'Power Breakfast')
  Food.create(name: 'Chicken Noodle Soup')
  Food.create(name: 'Power Breakfast')
  Food.create(name: 'Samurai Matcha Bowl')
  Food.create(name: 'Green Wonder')
  Food.create(name: 'Nutella Smores')
  Food.create(name: 'Lobster Cheese Fries')
  Food.create(name: 'Bison Burger')
  Food.create(name: 'Kale Ceasar Salad')
  Food.create(name: 'Tuna Collard Green Wrap')
  Food.create(name: 'Baby Spinach Salad with Cranberries and Almonds')
  Food.create(name: 'Spicy Salmon Rolls')
  Food.create(name: 'Salmon Sashimi')
  Food.create(name: 'The Catena Malbec')
  Food.create(name: 'La Marca Prosecco Champagne')
  Food.create(name: 'Black Truffle Tagliolini with Lobster')
  Food.create(name: 'Caviar Lobster Frittata')
end

def make_moods
  Mood.destroy_all
  Mood.create(name: 'Mexicana Mama')
  Mood.create(name: 'Hangover Cure')
  Mood.create(name: 'Sleep No More')
  Mood.create(name: 'Guilty Pleasure')
  Mood.create(name: 'Skinny-B')
  Mood.create(name: 'Chopsticks Sum')
  Mood.create(name: 'Wine not?')
  Mood.create(name: 'Caviar & Champagne Sil Vous Plait')
end

def make_recommendations
  Recommendation.destroy_all
  50.times do
    Recommendation.create(
      food_id: Food.all.sample.id,
      mood_id: Mood.all.sample.id,
      rating:(1..5).to_a.sample
    )
  end
end

def make_ratings
  Rating.destroy_all
  500.times do
    Rating.create(
      user_id: User.all.sample.id,
      recommendation_id: Recommendation.all.sample.id,
      score:(1..5).to_a.sample,
      comment: [nil, 'Works for me everytime',
        'spot on!',
        'not the best but..', 
        'meh', 'so true',
      ].sample
    )
  end
end


make_seeds
