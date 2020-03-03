class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|

      t.text :description
      t.integer :rating, null: false
      t.integer :meal_rating, null: false
      t.integer :service_rating, null: false
      t.integer :location_rating, null: false
      t.integer :people, index: true
      t.string :cuisine, array: true
      t.string :special_features, array: true
      t.string :occasion, array: true
      t.references :restaurant, foreign_key: true
      t.references :profile, foreign_key: true

      t.timestamps
    end
    add_index :reviews, :cuisine, using: 'gin'
    add_index :reviews, :special_features, using: 'gin'
    add_index :reviews, :occasion, using: 'gin'
  end
end
