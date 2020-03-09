class Review < ApplicationRecord
  belongs_to :profile
  belongs_to :restaurant

  has_many :bookmarks, as: :bookmarkable
  has_many_attached :photos

  validates :meal_rating, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :service_rating, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :location_rating, inclusion: { in: [1, 2, 3, 4, 5] }
end
