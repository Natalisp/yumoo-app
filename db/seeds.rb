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
  # 0, 7 squirrel
  Food.create(name: 'Camomile Tea And Avocado Toast')
  Food.create(name: 'Tomato Soup')
  Food.create(name: 'Macaroni and Cheese')
  Food.create(name: 'Chicken Noodle Soup')
  Food.create(name: 'Green Wonder Smoothie')
  Food.create(name: 'Moms Chicken Noodle Soup')
  Food.create(name: 'Power Breakfast')
  Food.create(name: 'Eggs Benedict')
  Food.create(name: 'Quinoa and Chia Porridge')
  Food.create(name: 'Nutella Smores')
  Food.create(name: 'Lobster Cheese Fries')
  Food.create(name: 'Bison Burger and Sweet Potato Fries')
  Food.create(name: 'Kale Ceasar Salad')
  Food.create(name: 'Green Tea and Avocado Toast')
  Food.create(name: 'Chia Seeds Yogurt with Strawberries')
  Food.create(name: 'Roast Beef Sandwich')
  Food.create(name: 'Grilled Chicken Sandwich')
  Food.create(name: 'Turkey Burger and Fries')
  Food.create(name: 'Hot Chocolate')
  Food.create(name: 'Eggnog')
  Food.create(name: 'Beef Stew')
  Food.create(name: 'Crispy Quinoa Burgers Topped with Sweet Potato Fries')
  Food.create(name: 'Crusted Grilled Lamb Chops')
  Food.create(name: 'Buffalo Chicken Mac and Cheese')
  Food.create(name: 'Spinach and Mushroom Lasagna')
  Food.create(name: 'Sweet Potato Mash')
  Food.create(name: 'Chicken Nacho Soup')
  Food.create(name: 'Raspberry-Orange Smothie')
  Food.create(name: 'Turkey Strawberry Salad')
  Food.create(name: 'Antipasto Salad')
  Food.create(name: 'Oysters')
  Food.create(name: 'Lobster Roll')
  Food.create(name: 'Raspberry-Orange Smothie')
  Food.create(name: 'Grilled Steak')
  Food.create(name: 'Spaghetti and Meatballs')
  Food.create(name: 'Oysters')
  Food.create(name: 'Caviar Lobster Frittata')
  Food.create(name: 'Black Truffle Tagliolini with Lobster')
  Food.create(name: 'Lemon Capellini with Caviar')
  Food.create(name: 'Teriyaki Noodles')
  Food.create(name: 'Chicken Noodle Soup')
  Food.create(name: 'German Potato Salad')
  Food.create(name: 'Chicken Tortilla Soup')
  Food.create(name: 'Baked Spaghetti')
  Food.create(name: 'Tuna Melt')


end

def make_moods
  Mood.destroy_all
  Mood.create(name: 'Squirrel on Caffeine')
  Mood.create(name: 'No more Whiskey in a Barn')
  Mood.create(name: 'Sleep No More')
  Mood.create(name: 'Guilty Pleasure')
  Mood.create(name: 'Skinny-B')
  Mood.create(name: 'Get it over with')

  Mood.create(name: 'Get it over with')
  Mood.create(name: 'Squirrel on Caffeine')
  Mood.create(name: 'Underpaid Elf in Santa’s Sweatshop')
  Mood.create(name: 'Godzilla on a Diet')
  Mood.create(name: 'Headaches with a Chance of Puke')
  Mood.create(name: 'Butter in Sahara')

  Mood.create(name: 'Eating lobster in the Hamptons')
  Mood.create(name: 'Wine not?')
  Mood.create(name: 'Caviar & Champagne')
  Mood.create(name: 'Sloth on a Sunday')
  Mood.create(name: 'Underpaid Elf in Santa’s Sweatshop')
  Mood.create(name: 'Get it over with')
end

def make_recommendations
    Recommendation.create(food_id: Food.all[0].id, mood_id: Mood.all[0].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[1].id, mood_id: Mood.all[0].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[2].id, mood_id: Mood.all[0].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[3].id, mood_id: Mood.all[1].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[4].id, mood_id: Mood.all[1].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[5].id, mood_id: Mood.all[1].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[6].id, mood_id: Mood.all[2].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[7].id, mood_id: Mood.all[2].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[8].id, mood_id: Mood.all[2].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[9].id, mood_id: Mood.all[3].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[10].id, mood_id: Mood.all[3].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[11].id, mood_id: Mood.all[3].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[12].id, mood_id: Mood.all[4].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[13].id, mood_id: Mood.all[4].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[14].id, mood_id: Mood.all[4].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[15].id, mood_id: Mood.all[5].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[16].id, mood_id: Mood.all[5].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[17].id, mood_id: Mood.all[5].id, rating:(1..5).to_a.sample )

    Recommendation.create(food_id: Food.all[15].id, mood_id: Mood.all[6].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[16].id, mood_id: Mood.all[6].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[17].id, mood_id: Mood.all[6].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[0].id, mood_id: Mood.all[7].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[1].id, mood_id: Mood.all[7].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[2].id, mood_id: Mood.all[7].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[18].id, mood_id: Mood.all[8].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[19].id, mood_id: Mood.all[8].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[20].id, mood_id: Mood.all[8].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[21].id, mood_id: Mood.all[9].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[22].id, mood_id: Mood.all[9].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[23].id, mood_id: Mood.all[9].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[24].id, mood_id: Mood.all[10].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[25].id, mood_id: Mood.all[10].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[26].id, mood_id: Mood.all[10].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[27].id, mood_id: Mood.all[11].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[28].id, mood_id: Mood.all[11].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[29].id, mood_id: Mood.all[11].id, rating:(1..5).to_a.sample )

    Recommendation.create(food_id: Food.all[30].id, mood_id: Mood.all[12].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[31].id, mood_id: Mood.all[12].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[32].id, mood_id: Mood.all[12].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[33].id, mood_id: Mood.all[13].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[34].id, mood_id: Mood.all[13].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[35].id, mood_id: Mood.all[13].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[36].id, mood_id: Mood.all[14].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[37].id, mood_id: Mood.all[14].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[38].id, mood_id: Mood.all[14].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[39].id, mood_id: Mood.all[15].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[40].id, mood_id: Mood.all[15].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[41].id, mood_id: Mood.all[15].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[24].id, mood_id: Mood.all[16].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[25].id, mood_id: Mood.all[16].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[26].id, mood_id: Mood.all[16].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[15].id, mood_id: Mood.all[17].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[16].id, mood_id: Mood.all[17].id, rating:(1..5).to_a.sample )
    Recommendation.create(food_id: Food.all[17].id, mood_id: Mood.all[17].id, rating:(1..5).to_a.sample )

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
