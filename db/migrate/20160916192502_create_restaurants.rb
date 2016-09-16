class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :rating
      t.string :price
      t.string :address
      t.string :link
      t.string :phone
      t.string :category

      t.timestamps
    end
  end
end
