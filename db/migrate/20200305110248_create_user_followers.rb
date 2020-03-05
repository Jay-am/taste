class CreateUserFollowers < ActiveRecord::Migration[5.2]
  def change
    create_table :user_followers do |t|
        t.bigint :follower_id, index: true
        t.bigint :following_id, index: true

      t.timestamps
    end

    add_foreign_key :user_followers, :users, column: :follower_id
    add_foreign_key :user_followers, :users, column: :following_id
  end
end
