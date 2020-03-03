class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:filter]

  def filter
  end

  def filter_result
  end
end
