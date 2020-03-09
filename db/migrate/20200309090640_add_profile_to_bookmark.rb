class AddProfileToBookmark < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookmarks, :profile
  end
end
