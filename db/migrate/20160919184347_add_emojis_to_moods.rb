class AddEmojisToMoods < ActiveRecord::Migration[5.0]
  def change
    add_column :moods, :emoji, :string
  end
end
