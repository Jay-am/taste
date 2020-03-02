class Profile < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :reviews
  has_many :bookmarks
end
