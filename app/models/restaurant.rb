class Restaurant < ApplicationRecord
  has_many :reviews
  has_many :bookmarks

  def self.by_cuisine(cuisines)
    where("cuisine && ARRAY[?]::varchar[]", cuisines)
  end
end
