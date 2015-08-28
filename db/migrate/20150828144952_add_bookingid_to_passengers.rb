class AddBookingidToPassengers < ActiveRecord::Migration
  def change
  	add_reference :passengers, :booking
  end
end
