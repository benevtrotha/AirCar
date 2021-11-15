class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :age, :string
    add_column :users, :drivers_license, :string
    add_column :users, :address, :string
  end
end
