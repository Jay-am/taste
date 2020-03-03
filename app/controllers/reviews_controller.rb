class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
    # if params[:restaurant_id].present?
    #     @restaurants = Restaurant.basic_search(params[:restaurant_id][:name])
    # else
    #  @restaurant = Restaurant.all
    # end
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.special_features = review_params[:special_features] & SPECIAL_FEATURES
    @review.occasion = review_params[:occasion] & OCCASION

    @review.user = current_user
    @review.restaurant = @restaurant

    # if @review.save
    # else
    #   render :new
    # end
  end

  def review_params
    params.require(:review).permit(:restaurant_id, :profile_id, :description, :rating, :meal_rating, :service_rating, :location_rating, :people, special_features: [], occasion: [])
  end

end
