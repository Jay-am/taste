class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|

      t.string :name
      t.string :address
      t.text :description
      t.string :cuisine, array: true
      t.string :special_features, array: true
      t.string :occasion, array: true

      t.timestamps
    end
    add_index :restaurants, :cuisine, using: 'gin'
    add_index :restaurants, :special_features, using: 'gin'
    add_index :restaurants, :occasion, using: 'gin'
  end
end
