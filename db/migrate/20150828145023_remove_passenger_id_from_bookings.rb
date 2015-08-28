class RemovePassengerIdFromBookings < ActiveRecord::Migration
  def change
  	remove_reference :bookings, :passenger
  end
end
