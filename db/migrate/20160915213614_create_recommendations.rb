class CreateRecommendations < ActiveRecord::Migration[5.0]
  def change
    create_table :recommendations do |t|
      t.integer :user_id
      t.integer :food_id
      t.integer :mood_id
      t.integer :rating

      t.timestamps
    end
  end
end
