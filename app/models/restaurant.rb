class Restaurant < ApplicationRecord
  has_many :reviews

  def self.by_cuisine(cuisines)
    where("cuisine && ARRAY[?]::varchar[]", cuisines)
  end
end
