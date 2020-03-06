class Review < ApplicationRecord
  belongs_to :profile
  belongs_to :restaurant

  act_as_bookmarkee

  validates :meal_rating, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :service_rating, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :location_rating, inclusion: { in: [1, 2, 3, 4, 5] }
end
