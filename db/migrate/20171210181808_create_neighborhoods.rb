class CreateNeighborhoods < ActiveRecord::Migration[5.1]
  def change
    create_table :neighborhoods do |t|
      t.references :city, foreign_key: true
      t.string :photo

      t.timestamps
    end
  end
end
