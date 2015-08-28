class BookingsController < ApplicationController
  def new
  	@booking = Booking.new
  	@num_passengers = params[:num_passengers]
  	@num_passengers.to_i.times { @booking.passengers.build }
  	@flight = Flight.find(params[:flight_id]) unless params[:flight_id].nil?
    redirect_to root_path if params[:flight_id].nil?
  end

  def create
  	@booking = Booking.create(booking_params)
  	redirect_to @booking
  end

  def show
  	@booking = Booking.find(params[:id])
  end

  def index
  	@bookings = Booking.all
  end

  private
    def booking_params
      params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
    end
end
