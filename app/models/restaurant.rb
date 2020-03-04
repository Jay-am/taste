class Restaurant < ApplicationRecord
  has_many :reviews, :dependent => :delete_all
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def self.by_cuisine(cuisines)
    where("cuisine && ARRAY[?]::varchar[]", cuisines)
  end
end
