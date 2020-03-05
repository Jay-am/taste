class Profile < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :reviews
  has_one :bookmark
  has_one_attached :photo
end
