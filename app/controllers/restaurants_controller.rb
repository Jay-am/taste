class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:filter, :index]

  def saved
    @bookmarks = @restaurant.bookmarks
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.reviews

    @coordinates = @restaurant.geocode #returns restaurant with coordinates


    @markers = {
     lat: @coordinates.first,
      lng: @coordinates.last
    }

  end

  def map
    @markers = []
    # @markers = [{ lat: params[:lat], lng: params[:lng] }]
    @restaurants = Restaurant.near([params[:lat], params[:lng]], 3)
    @restaurants.each do |restaurant|
      @coordinates = restaurant.geocode
      @markers << {
        lat: @coordinates.first,
        lng: @coordinates.last,
        infoWindow: render_to_string(partial: "info_window", locals: { restaurant: restaurant })
      }
    end
  end

  def filter_result
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
  end
end
