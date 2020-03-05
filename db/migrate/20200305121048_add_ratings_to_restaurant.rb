class AddRatingsToRestaurant < ActiveRecord::Migration[5.2]
  def change
   change_table :restaurants do |t|
    t.string :ratings, array: true
    end
  end
end
