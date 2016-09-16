class AddScoreToRatings < ActiveRecord::Migration[5.0]
  def change
    add_column :ratings, :score, :float, default: 0
  end
end
