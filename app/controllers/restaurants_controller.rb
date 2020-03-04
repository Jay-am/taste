class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:filter, :index]
def show
  @restaurant = Restaurant.find(params[:id])
end

def filter

end

def index
  @restaurants = Restaurant.all
  @restaurants = @restaurants.by_cuisine(params[:styles])
  @restaurants = @restaurants.by_cuisine(params[:cuisines])
  @restaurants = @restaurants.by_cuisine(params[:dishes])
  @restaurants = @restaurants.by_cuisine(params[:food_types])
  @restaurants = @restaurants.by_cuisine(params[:food_styles])
  @restaurants = @restaurants.by_cuisine(params[:gastronomies])
  @restaurants = @restaurants.by_cuisine(params[:drinks])
  @restaurants = @restaurants.by_cuisine(params[:ratings])
  @restaurants = @restaurants.by_cuisine(params[:special_features])
  @restaurants = @restaurants.by_cuisine(params[:occassions])
  @restaurants = @restaurants.by_cuisine(params[:service])
  @restaurants = @restaurants.by_cuisine(params[:location])
  @restaurants = @restaurants.by_cuisine(params[:languages])
  @restaurants = @restaurants.by_cuisine(params[:open_hours])
  @restaurants = @restaurants.by_cuisine(params[:distance])
  @restaurants = @restaurants.by_cuisine(params[:located])
  @restaurants = @restaurants.by_cuisine(params[:payments])
end

def filter_result
  payment_filter = params.dig('payment', 'payment_names')
  binding.pry
end

end
