class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:filter, :index]

  def saved
    @bookmarks = @restaurant.bookmarks
  end

  def search
    @restaurants = []
    if params[:query].present?
      @restaurants = Restaurant.where("name ILIKE ?", "%#{params[:query]}%")
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.reviews

    @coordinates = @restaurant.geocode #returns restaurant with coordinates


    @markers = [{
     lat: @coordinates.first,
      lng: @coordinates.last
    }]

    if current_user
      @is_bookmarked = Bookmark.where(profile: current_user.profile, bookmarkable: @restaurant).exists?
    else
      @is_bookmarked = false
    end

    if current_user
      @is_review_bookmarked = Bookmark.where(profile: current_user.profile, bookmarkable: @review).exists?
    else
      @is_review_bookmarked = false
    end
  end

  def map


    # @markers = [{ lat: params[:lat], lng: params[:lng] }]
    @restaurants = Restaurant.near([params[:lat], params[:lng]], 1)

    @markers = @restaurants.map do |restaurant|
      @coordinates = restaurant.geocode
      {
        lat: @coordinates.first,
        lng: @coordinates.last,
        infoWindow: render_to_string(partial: "info_window", locals: { restaurant: restaurant })
      }
    end
  end

  def bookmark
    restaurant = Restaurant.find(params[:restaurant_id])
    bookmark = Bookmark.find_by(profile: current_user.profile, bookmarkable: restaurant)
    if bookmark.nil?
      Bookmark.create profile: current_user.profile, bookmarkable: restaurant
    end
      redirect_to restaurant_path(restaurant)
  end

  def unbookmark
    restaurant = Restaurant.find(params[:restaurant_id])
    bookmark = Bookmark.find_by(profile: current_user.profile, bookmarkable: restaurant)
    if !bookmark.nil?
      bookmark.destroy
    end
    redirect_to restaurant_path(restaurant)
  end

  def index
    @restaurants = Restaurant.all
    # @reviews = @restaurant.reviews

    if params[:query].present?
      @restaurants = Restaurant.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @restaurants = Restaurant.all
    end

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
