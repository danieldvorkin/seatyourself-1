class ReservationsController < ApplicationController
  def new
  	@reservation = Reservation.new
  end

  def create
  	@restaurant = load_rest
  	@reservation = @restaurant.reservations.build(res_params)
  	@reservation.user = current_user

  	if @reservation.save
  		redirect_to root_path, notice: "Reservation created successfully"
  	else
  		render 'restaurants/show'
  	end
  end

  def edit
  end

  def destroy
  end

  private
  def res_params
  	params.require(:reservation).permit(:name, :party_size, :booking_time)
  end

  def load_rest
  	@restaurant = Restaurant.find(params[:restaurant_id])
  end
end
