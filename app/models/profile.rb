class Profile < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :reviews
  # TODO: switch to has_many
  has_one :bookmark
  has_one_attached :photo
end
