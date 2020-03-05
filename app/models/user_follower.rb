class UserFollower < ApplicationRecord
  belongs_to :follower, class_name: 'User', foreign_key: :follower_id, inverse_of: :following
  belongs_to :follows, class_name: 'User', foreign_key: :following_id, inverse_of: :followers
end
