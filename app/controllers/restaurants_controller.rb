class RestaurantsController < ApplicationController

	def index
    @restaurant = Restaurant.all
	end

  def show
  	@restaurant = Restaurant.find(params[:id])
  	if current_user
  		@reservation = @restaurant.reservations.build
  	end
  end

  def create
  end
end
