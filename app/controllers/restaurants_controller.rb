class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:filter, :index]


def show
  @restaurant = Restaurant.find(params[:id])
  @reviews = @restaurant.reviews

  @coordinates = @restaurant.geocode #returns restaurant with coordinates

  @markers = {
    lat: @coordinates.first,
    lng: @coordinates.last
  }
  end

  def filter
  end

  def index
    @restaurants = Restaurant.all

    params[:filters][0].keys.each do |key|
      @restaurants = @restaurants.send("by_#{key}", params[:filters][0][key])
    end

    params[:filters][0].keys.each do |key|
      @restaurants = @restaurants.send("with_#{key}", params[:filters][0][key])
    end

    # @restaurants = @restaurants.by_style(params[:styles])
    # @restaurants = @restaurants.by_cuisine(params[:cuisines])
    # @restaurants = @restaurants.by_dish(params[:dishes])
    # @restaurants = @restaurants.by_food_type(params[:food_types])
    # @restaurants = @restaurants.by_food_style(params[:food_styles])
    # @restaurants = @restaurants.by_gastronomy(params[:gastronomies])
    # @restaurants = @restaurants.by_drink(params[:drinks])
    # @restaurants = @restaurants.by_rating(params[:ratings])
    # @restaurants = @restaurants.by_special_feature(params[:special_features])
    # @restaurants = @restaurants.by_occasion(params[:occasions])
    # @restaurants = @restaurants.by_service(params[:service])
    # @restaurants = @restaurants.by_location(params[:location])
    # @restaurants = @restaurants.by_language(params[:languages])
    # @restaurants = @restaurants.by_open_hour(params[:open_hours])
    # @restaurants = @restaurants.by_distance(params[:distance])
    # @restaurants = @restaurants.by_located(params[:located])
    # @restaurants = @restaurants.by_payment(params[:payments])

  end

  def filter_result
    payment_filter = params.dig('payment', 'payment_names')
  end

end
