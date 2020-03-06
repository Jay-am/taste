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

    if params[:filters]
      if params[:filter_type] && params[:filter_type] == 'broad'
        # otherwise, do this
        params[:filters][0].keys.each do |key|
          @restaurants = @restaurants.send("with_#{key}", params[:filters][0][key])
        end
      else
        # if user did not tick broad filter checkbox, then do this
        params[:filters][0].keys.each do |key|
          @restaurants = @restaurants.send("by_#{key}", params[:filters][0][key])
        end
      end
    end

    @restaurants
  end
end
