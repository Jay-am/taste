class RemoveMarkedFromBookmarks < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookmarks, :marked, :boolean
  end
end
