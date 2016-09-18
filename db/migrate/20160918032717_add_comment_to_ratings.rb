class AddCommentToRatings < ActiveRecord::Migration[5.0]
  def change
    add_column :ratings, :comment, :text
  end
end
