class AddUserToProfile < ActiveRecord::Migration[5.2]
  def change
    change_table :profiles do |t|
      t.references :user
      t.string :first_name
      t.string :last_name
    end
  end
end
