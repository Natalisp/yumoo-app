def make_seeds
  make_users
  make_foods
  make_moods
  make_recommendations
end

def make_users
  User.create!(name: 'Nata', email: 'nata@aol.com', password: 'nnnnnn')
  User.create!(name: 'Satu', email: 'satu@aol.com', password: 'ssssss')
  User.create!(name: 'Paige', email: 'paige@aol.com', password: 'pppppp')
  User.create!(name: 'Aehmet', email: 'ahhhmed@aol.com', password: 'aaaaaa')
  User.create!(name: 'Dereck', email: 'nick@aol.com', password: 'dddddd')
  User.create!(name: 'Natasha', email: 'natasha@aol.com', password: 'nnnnnn')
  User.create!(name: 'SatuB', email: 'satub@aol.com', password: 'ssssss')
  User.create!(name: 'PaigeL', email: 'paigeL@aol.com', password: 'pppppp')
  User.create!(name: 'AehmetF', email: 'ahhhmedf@aol.com', password: 'aaaaaa')
  User.create!(name: 'DereckF', email: 'nickf@aol.com', password: 'dddddd')
  User.create!(name: 'Natali', email: 'natali@aol.com', password: 'nnnnnn')
  User.create!(name: 'SatuQ', email: 'satuq@aol.com', password: 'ssssss')
  User.create!(name: 'PaigeQ', email: 'paigeq@aol.com', password: 'pppppp')
  User.create!(name: 'AehmetQ', email: 'ahhhmedq@aol.com', password: 'aaaaaa')
  User.create!(name: 'DereckQ', email: 'nickq@aol.com', password: 'dddddd')
  User.create!(name: 'Natasha@', email: 'natashaq@aol.com', password: 'nnnnnn')
  User.create!(name: 'SatuBQ', email: 'satubq@aol.com', password: 'ssssss')
  User.create!(name: 'PaigeLQ', email: 'paigelq@aol.com', password: 'pppppp')
  User.create!(name: 'AehmetFQ', email: 'ahhhmedfq@aol.com', password: 'aaaaaa')
  User.create!(name: 'DereckFQ', email: 'nickfq@aol.com', password: 'dddddd')
  User.create!(name: 'DereckMQ', email: 'nickfmq@aol.com', password: 'dddddd')
end

def make_foods
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
  20.times do |i|
    Recommendation.create(user_id: i+1, food_id: i+1, mood_id: i+1, rating:(1..5).to_a.sample)
  end
end


make_seeds
