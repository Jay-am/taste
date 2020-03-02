class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|

      t.integer :age
      t.string :gender
      t.string :address

      t.timestamps
    end
  end
end
