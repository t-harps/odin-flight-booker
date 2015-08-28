class Passenger < ActiveRecord::Base
  belongs_to :booking
  has_one :flight, :through => :bookings
end
