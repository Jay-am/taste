class ReviewsController < ApplicationController

  def index
    @reviews = Review.where(profile_id: current_user.profile.id)
    # @reviews = Review.select(:description).distinct
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
    @review = Review.find params[:id]
  end

  def bookmark
    review = Review.find(params[:review_id])
    bookmark = Bookmark.find_by(profile: current_user.profile, bookmarkable: review)
    if bookmark.nil?
      Bookmark.create profile: current_user.profile, bookmarkable: review
    end
    redirect_to restaurant_path(restaurant)
  end

  def unbookmark
    review = Review.find(params[:review_id])
    bookmark = Bookmark.find_by(profile: current_user.profile, bookmarkable: review)
    if !bookmark.nil?
      bookmark.destroy
    end
    redirect_to restaurant_path(restaurant)
  end


  def review_params
    params.require(:review).permit(:restaurant_id, :profile_id, :description, :rating, :meal_rating, :service_rating, :location_rating, :local, special_features: [], occasion: [])
  end

end
