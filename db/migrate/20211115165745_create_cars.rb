class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :car_type
      t.integer :price
      t.text :description
      t.string :location
      t.string :brand
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
