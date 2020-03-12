class AddDefaultsToRestaurants < ActiveRecord::Migration[5.2]
  def change
    change_column :restaurants, :cuisine, :string, {default: [], array: true, nil: []}
    change_column :restaurants, :special_features, :string, {default: [], array: true, nil: []}
    change_column :restaurants, :occasion, :string, {default: [], array: true, nil: []}
    change_column :restaurants, :styles, :string, {default: [], array: true, nil: []}
    change_column :restaurants, :dishes, :string, {default: [], array: true, nil: []}
    change_column :restaurants, :food_types, :string, {default: [], array: true, nil: []}
    change_column :restaurants, :food_styles, :string, {default: [], array: true, nil: []}
    change_column :restaurants, :gastronomies, :string, {default: [], array: true, nil: []}
    change_column :restaurants, :drinks, :string, {default: [], array: true, array: true, nil: []}
    change_column :restaurants, :service, :string, {default: [], array: true, nil: []}
    change_column :restaurants, :location, :string, {default: [], array: true, nil: []}
    change_column :restaurants, :languages, :string, {default: [], array: true, nil: []}
    change_column :restaurants, :open_hours, :string, {default: [], array: true, nil: []}
    change_column :restaurants, :located, :string, {default: [], array: true, nil: []}
    change_column :restaurants, :payments, :string, {default: [], array: true, nil: []}
    change_column :restaurants, :ratings, :string, {default: [], array: true, nil: []}
  end
end

{:default=>[], :nil=>[]}
