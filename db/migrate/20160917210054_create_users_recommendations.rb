class CreateUsersRecommendations < ActiveRecord::Migration[5.0]
  def change
    create_table :users_recommendations do |t|
      t.integer :user_id
      t.integer :recommendation_id

      t.timestamps
    end
  end
end
