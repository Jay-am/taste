class ChangePeopleToBoolean < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :people
    add_column :reviews, :local, :boolean, default: false
  end
end
