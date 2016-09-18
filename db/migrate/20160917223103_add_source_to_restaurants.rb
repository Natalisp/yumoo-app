class AddSourceToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :source, :string
  end
end
