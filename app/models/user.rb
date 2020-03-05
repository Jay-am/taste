class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :profile
  after_create :create_profile

  has_many :user_followed_by, class_name: 'UserFollower', foreign_key: :following_id, inverse_of: :following
  has_many :user_following, class_name: 'UserFollower', foreign_key: :follower_id, inverse_of: :followed_by

  has_many :followers, through: :user_followed_by, class_name: 'User', inverse_of: :following, source: :followed_by
  has_many :following, through: :user_following, class_name: 'User', inverse_of: :followers, source: :following

  def create_profile
    Profile.create(user: self)
  end
end
