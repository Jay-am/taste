class Restaurant < ApplicationRecord
  act_as_bookmarkee

  has_many :reviews, :dependent => :delete_all

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def self.by_style(styles)
    where("styles && ARRAY[?]::varchar[]", styles)
  end

  def self.by_cuisine(cuisines)
    where("cuisine && ARRAY[?]::varchar[]", cuisines)
  end

  def self.by_dish(dishes)
    where("dishes && ARRAY[?]::varchar[]", dishes)
  end

  def self.by_food_type(food_types)
    where("food_types && ARRAY[?]::varchar[]", food_types)
  end

  def self.by_food_style(food_styles)
    where("food_styles && ARRAY[?]::varchar[]", food_styles)
  end

  def self.by_gastronomy(gastronomies)
    where("gastronomies && ARRAY[?]::varchar[]", gastronomies)
  end

  def self.by_drink(drinks)
    where("drinks && ARRAY[?]::varchar[]", drinks)
  end

  def self.by_rating(ratings)
    where("ratings && ARRAY[?]::varchar[]", ratings)
  end

  def self.by_special_feature(special_features)
    where("special_features && ARRAY[?]::varchar[]", special_features)
  end

  def self.by_occasion(occasions)
    where("occasion && ARRAY[?]::varchar[]", occasions)
  end

  def self.by_service(service)
    where("service && ARRAY[?]::varchar[]", service)
  end

  def self.by_location(location)
    where("location && ARRAY[?]::varchar[]", location)
  end

  def self.by_language(languages)
    where("languages && ARRAY[?]::varchar[]", languages)
  end

  def self.by_open_hour(open_hours)
    where("open_hours && ARRAY[?]::varchar[]", open_hours)
  end

  def self.by_distance(distance)
    where("distance && ARRAY[?]::varchar[]", distance)
  end

  def self.by_located(located)
    where("located && ARRAY[?]::varchar[]", located)
  end

  def self.by_payment(payments)
    where("payments && ARRAY[?]::varchar[]", payments)
  end

end
