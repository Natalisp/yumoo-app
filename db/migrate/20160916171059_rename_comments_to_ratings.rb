class RenameCommentsToRatings < ActiveRecord::Migration[5.0]
  def change
    rename_table :comments, :ratings
  end
end
