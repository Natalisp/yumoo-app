class AddColumnToFoods < ActiveRecord::Migration[5.0]
  def change
    add_column :foods, :mood_id, :integer
  end
end
