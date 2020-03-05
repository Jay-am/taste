class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :profile
  after_create :create_profile

  has_many :user_followers
  has_many :followers, through: :user_followers, class_name: 'User', foreign_key: :follower_id, inverse_of: :following, source: :follower
  has_many :following, through: :user_followers, class_name: 'User', foreign_key: :following_id, inverse_of: :followers, source: :follows

  def create_profile
    Profile.create(user: self)
  end
end
