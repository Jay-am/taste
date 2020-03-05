class UsersController < ApplicationController

  def follow
    @user = User.find(params[:id])
    current_user.following << @user
    redirect_to profile_path(@user.profile)
  end

  def unfollow
    @user = User.find(params[:id])
    current_user.following.destroy @user
    redirect_to profile_path(@user.profile)
  end

end
