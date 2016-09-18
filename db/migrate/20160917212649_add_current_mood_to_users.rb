class AddCurrentMoodToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :current_mood_id, :integer
  end
end
