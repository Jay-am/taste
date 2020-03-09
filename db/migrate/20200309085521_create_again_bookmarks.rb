class CreateAgainBookmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmarks do |t|
      t.string  :note
      t.references :bookmarkable, polymorphic: true
      t.timestamps
    end

    add_index :bookmarks, [:bookmarkable_id, :bookmarkable_type]
  end
end
