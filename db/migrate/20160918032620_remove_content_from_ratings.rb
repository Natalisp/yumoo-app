class RemoveContentFromRatings < ActiveRecord::Migration[5.0]
  def change
    remove_column :ratings, :content, :text
  end
end
