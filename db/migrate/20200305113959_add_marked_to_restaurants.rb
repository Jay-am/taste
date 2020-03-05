class AddMarkedToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :marked, :boolean, default: :false
  end
end
