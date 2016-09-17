class RemoveUserIdFromRecommendations < ActiveRecord::Migration[5.0]
  def change
    remove_column :recommendations, :user_id, :integer
  end
end
