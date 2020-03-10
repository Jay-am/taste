class ReviewsController < ApplicationController

  def index
  end

  def new
    # @profile = Profile.find(params[:id])
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
    # if params[:restaurant_id].present?
    #  @restaurants = Restaurant.basic_search(params[:restaurant_id][:name])
    # else
    #  @restaurant = Restaurant.all
    # end
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    # @review.special_features = review_params[:special_features] & SPECIAL_FEATURES
    # @review.occasion = review_params[:occasion] & OCCASSIONS
    @review.meal_rating = review_params[:meal_rating]
    @review.service_rating = review_params[:service_rating]
    @review.location_rating = review_params[:location_rating]

    @review.profile = current_user.profile
    @review.restaurant = @restaurant

    if @review.save
      redirect_to profile_path(current_user.profile)
    else
      render :new
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.find(params[:id])
  end

  def update
  end

  def show
  end

  def review_params
    params.require(:review).permit(:restaurant_id, :profile_id, :description, :rating, :meal_rating, :service_rating, :location_rating, :local, special_features: [], occasion: [])
  end

end
