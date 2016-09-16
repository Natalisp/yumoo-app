def make_seeds
  make_comments
  make_foods
  make_moods
  make_recommendations
  make_users
end


def make_comments
  Comment.create!(content: 'Nah, cheese was too cheesy', user_id: 1, recommendation_id: 1)
  Comment.create!(content: 'Mustard on the beat ho!', user_id: 2, recommendation_id: 2)
  Comment.create!(content: 'Tryna fix your inner issues with cheat meal - never works', user_id: 5, recommendation_id: 1)
  Comment.create!(content: 'Needed it, ohh I needed it', user_id: 4, recommendation_id: 3)
end


def make_foods
    Food.create(name: 'Beef Au Poivre Empanadas', mood_id: 1)
    Food.create(name: 'Mezcal Chipotle Infused BBQ Chicken', mood_id: 1)
    Food.create(name: 'Mole Poblano', mood_id: 1)
    Food.create(name: 'Nurse Ginger Green Juice', mood_id: 2)
    Food.create(name: 'Power Breakfast', mood_id: 2)
    Food.create(name: 'Chicken Noodle Soup', mood_id: 2)
    Food.create(name: 'Power Breakfast', mood_id: 3)
    Food.create(name: 'Samurai Matcha Bowl', mood_id: 3)
    Food.create(name: 'Green Wonder', mood_id: 3)
    Food.create(name: 'Nutella Smores', mood_id: 4)
    Food.create(name: 'Lobster Cheese Fries', mood_id: 4)
    Food.create(name: 'Bison Burger', mood_id: 4)
    Food.create(name: 'Kale Ceasar Salad', mood_id: 5)
    Food.create(name: 'Tuna Collard Green Wrap', mood_id: 5)
    Food.create(name: 'Baby Spinach Salad with Cranberries and Almonds', mood_id: 5)
    Food.create(name: 'Spicy Salmon Rolls', mood_id: 6)
    Food.create(name: 'Salmon Sashimi', mood_id: 6)
    Food.create(name: 'The Catena Malbec', mood_id: 7)
    Food.create(name: 'La Marca Prosecco Champagne', mood_id: 7)
    Food.create(name: 'Black Truffle Tagliolini with Lobster', mood_id: 8)
    Food.create(name: 'Caviar Lobster Frittata', mood_id: 8)    
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
  Recommendation.create(user_id: 1, food_id: 5, mood_id: 3)
  Recommendation.create(user_id: 2, food_id: 3, mood_id: 5)
  Recommendation.create(user_id: 3, food_id: 4, mood_id: 6)
  Recommendation.create(user_id: 4, food_id: 2, mood_id: 1)
  Recommendation.create(user_id: 5, food_id: 1, mood_id: 2)
end

def make_users
  User.create!(name: 'Nata', email: 'nata@aol.com')
  User.create!(name: 'Satu', email: 'satu@aol.com')
  User.create!(name: 'Paige', email: 'paige@aol.com')
  User.create!(name: 'Aehmet', email: 'ahhhmed@aol.com')
  User.create!(name: 'Dereck', email: 'nick@aol.com')
end

make_seeds