class Profile < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :reviews
  has_many :bookmarks
  has_many :restaurants, through: :bookmarks, source: :bookmarkable, source_type: "Restaurant"
  # has_many :bookmarked_reviews, through: :bookmarks

  has_one_attached :photo
end
