class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|

      t.text :description
      t.integer :rating, null: false
      t.integer :meal_rating, null: false
      t.integer :service_rating, null: false
      t.integer :location_rating, null: false
      t.integer :people, index: true
      t.jsonb :cuisine, null: false, default: '{}', index: :gin
      t.jsonb :special_features, null: false, default: '{}', index: :gin
      t.jsonb :occasion, null: false, default: '{}', index: :gin
      t.references :restaurant, foreign_key: true
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
