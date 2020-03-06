class Profile < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :reviews

  act_as_bookmarker

  has_one_attached :photo
end
