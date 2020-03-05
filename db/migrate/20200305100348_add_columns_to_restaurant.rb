class AddColumnsToRestaurant < ActiveRecord::Migration[5.2]
  def change
    change_table :restaurants do |t|
      t.string :styles, array: true
      t.string :dishes, array: true
      t.string :food_types, array: true
      t.string :food_styles, array: true
      t.string :gastronomies, array: true
      t.string :drinks, array: true
      t.string :service, array: true
      t.string :location, array: true
      t.string :languages, array: true
      t.string :open_hours, array: true
      t.string :distance, array: true
      t.string :located, array: true
      t.string :payments, array: true
    end
  end
end
