class ReservationsController < ApplicationController
  def new
  	@reservation = Reservation.new
  end

  def create
  	@restaurant = load_rest
  	@reservation = @restaurant.reservations.build(res_params)

  	if @reservation.save
      redirect_to root_path(@restaurant, @reservation), notice: 'Review created successfully. Please check your email for confirmation'
  	  UserMailer.conf_email(current_user).deliver_now
    else
  		render 'restaurants'
  	end
  end

  def edit
  end

  def destroy
  end

  private
  def res_params
  	params.require(:reservation).permit(:name, :party_size, :booking_time, :restaurant_id)
  end

  def load_rest   
  	@restaurant = Restaurant.find(params[:restaurant_id])
  end
end
