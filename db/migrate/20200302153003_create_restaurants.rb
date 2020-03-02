class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|

      t.string :name
      t.string :address
      t.text :description
      t.jsonb :cuisine, null: false, default: '{}', index: :gin
      t.jsonb :special_features, null: false, default: '{}', index: :gin
      t.jsonb :occasion, null: false, default: '{}', index: :gin

      # t.boolean :vegan, default: false
      # t.boolean :sustainable, default: false
      # t.boolean :fairtrade, default: false
      # t.boolean :outdoor_seat, default: false
      # t.boolean :availabe_sun, default: false
      # t.boolean :fireplace, default: false
      # t.boolean :wheelchair_accessible, default: false
      # t.boolean :couple, default: false

      t.timestamps
    end
  end
end
