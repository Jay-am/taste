class UserFollower < ApplicationRecord
  belongs_to :followed_by, class_name: 'User', foreign_key: :follower_id, inverse_of: :user_following
  belongs_to :following, class_name: 'User', foreign_key: :following_id, inverse_of: :user_followed_by

  validates :followed_by, uniqueness: { scope: :following, message: "You are already following this user." }
end
