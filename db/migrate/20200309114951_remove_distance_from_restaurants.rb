class RemoveDistanceFromRestaurants < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :distance, :string
  end
end
