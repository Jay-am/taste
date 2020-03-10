class Restaurant < ApplicationRecord
  has_many :reviews, :dependent => :delete_all

  has_many :bookmarks, as: :bookmarkable

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  ALL_FILTERS.keys.each do |key|
    self.class.define_method("with_#{key.downcase}".to_sym) do |list|
      where("#{key.downcase} @> ARRAY[?]::varchar[]", list)
    end

    self.class.define_method("by_#{key.downcase}".to_sym) do |list|
      where("#{key.downcase} && ARRAY[?]::varchar[]", list)
    end
  end

  def get_avg_rating
    sum_rating = 0

    reviews.each do |review|
      sum_rating += review.rating
    end

    if sum_rating == 0
      "No rating"
    else
      rating = sum_rating / reviews.count
      rating.to_d
    end
  end
end
