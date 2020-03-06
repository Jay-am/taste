class Bookmark < ApplicationRecord
  belongs_to :profile
  belongs_to :restaurant

  act_as_bookmarkee
  validates :content, presence: true
end
