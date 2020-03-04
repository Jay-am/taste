class Profile < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :reviews
  has_many :bookmarks
  has_one_attached :photo
end
