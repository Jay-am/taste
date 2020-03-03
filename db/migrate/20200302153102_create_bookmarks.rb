class CreateBookmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmarks do |t|

      t.text :set_note
      t.boolean :marked, default: false
      t.references :restaurant, foreign_key: true
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
