class AddImageToCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :car_image, :string
  end
end
