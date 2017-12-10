class CreateWalks < ActiveRecord::Migration[5.1]
  def change
    create_table :walks do |t|
      t.references :city, foreign_key: true
      t.references :neighborhood, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :stops
      t.string :focus
      t.string :photo
      t.integer :duration
      t.integer :length
      t.string :start_point
      t.string :end_point

      t.timestamps
    end
  end
end
