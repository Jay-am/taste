class ProfilesController < ApplicationController
  def show
    @profile = Profile.find(params[:id])
    @reviews = @profile.reviews
    @bookmarks = @profile.bookmarks.includes(:bookmarkable).where bookmarkable_type: Restaurant.name
    @restaurants = @profile.restaurants

    if @profile.id == current_user.profile.id
      @photo = "https://res.cloudinary.com/kaori-kk/image/upload/v1584031290/taste/DavidThoreau_ta6vv8.jpg"
    else
      @photo = "https://res.cloudinary.com/kaori-kk/image/upload/v1584023641/Deborah_ickwos.jpg"
    end
  end

  def edit
    @profile = Profile.find(params[:id])
    require_owner!(@profile)
  end

  def update
    @profile = Profile.find(params[:id])
    require_owner!(@profile)

    @profile.update(profile_params)
    redirect_to profile_path(@profile)
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :age, :gender, :address, :photo, :user_id)
  end

  def require_owner!(profile)
    if (current_user != profile.user)
      flash[:notice] = 'You are not authorized to do this.'
      redirect_to profile_path
    end
  end
end
