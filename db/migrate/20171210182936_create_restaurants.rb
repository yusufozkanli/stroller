class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :cuisine
      t.integer :price
      t.text :hours
      t.references :city, foreign_key: true
      t.references :neighborhood, foreign_key: true
      t.references :walk, foreign_key: true
      t.string :photo
      t.integer :hours
      t.string :address
      t.text :info

      t.timestamps
    end
  end
end
