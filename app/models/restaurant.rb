class Restaurant < ApplicationRecord
  has_many :bookmarks
  has_many :reviews, :dependent => :delete_all

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def self.by_style(styles)
    where("style && ARRAY[?]::varchar[]", styles)
  end

  def self.by_cuisine(cuisines)
    where("cuisine && ARRAY[?]::varchar[]", cuisines)
  end

  def self.by_dish(dishes)
    where("dish && ARRAY[?]::varchar[]", dishes)
  end

  def self.by_food_type(food_types)
    where("food_type && ARRAY[?]::varchar[]", food_types)
  end

  def self.by_food_style(food_styles)
    where("food_style && ARRAY[?]::varchar[]", food_styles)
  end

  def self.by_gastronomy(gastronomies)
    where("gastronomy && ARRAY[?]::varchar[]", gastronomies)
  end

  def self.by_drink(drinks)
    where("drink && ARRAY[?]::varchar[]", drinks)
  end

  def self.by_rating(ratings)
    where("rating && ARRAY[?]::varchar[]", ratings)
  end

  def self.by_special_feature(special_features)
    where("special_feature && ARRAY[?]::varchar[]", special_features)
  end

  def self.by_occassion(occassions)
    where("occassion && ARRAY[?]::varchar[]", occassions)
  end

  def self.by_service(service)
    where("service && ARRAY[?]::varchar[]", service)
  end

  def self.by_location(location)
    where("location && ARRAY[?]::varchar[]", location)
  end

  def self.by_language(languages)
    where("language && ARRAY[?]::varchar[]", languages)
  end

  def self.by_open_hour(open_hours)
    where("open_hour && ARRAY[?]::varchar[]", open_hours)
  end

  def self.by_distance(distance)
    where("distance && ARRAY[?]::varchar[]", distance)
  end

  def self.by_located(located)
    where("located && ARRAY[?]::varchar[]", located)
  end

  def self.by_payment(payments)
    where("payment && ARRAY[?]::varchar[]", payments)
  end

end
