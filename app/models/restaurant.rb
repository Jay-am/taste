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
end
