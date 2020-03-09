class ProfilesController < ApplicationController
  def show
    # if @profile.restaurants == nil || @reviews == nil
    #   @profile = Profile.find(params[:id])
    # else
      @profile = Profile.find(params[:id])
      @reviews = @profile.reviews
      @restaurants = @profile.restaurants
    # end
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
