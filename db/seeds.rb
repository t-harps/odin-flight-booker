# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Airport.delete_all
Flight.delete_all
Booking.delete_all
Passenger.delete_all

#Airport
Airport.create!(code: "SFO") #1
Airport.create!(code: "NYC") #2
Airport.create!(code: "LND") #3
Airport.create!(code: "LAX") #4
Airport.create!(code: "VCY") #5

date1 = DateTime.new(2015, 8, 29, 22, 35, 0)
date2 = DateTime.new(2015, 8, 25, 9, 20, 0)
date3 = DateTime.new(2015, 9, 02, 10, 30, 0)
date4 = DateTime.new(2015, 9, 18, 16, 45, 0)
date5 = DateTime.new(2015, 11, 20, 2, 00, 0)

#Flights 
#SFO - NYC
Flight.create!(date: date1 ,
	           duration: 360,
	           departure_airport_id: 1,
	           destination_airport_id: 2)
#NYC - SFO
Flight.create!(date: date2 ,
	           duration: 340,
	           departure_airport_id: 2,
	           destination_airport_id: 1)
#SFO - LAX
Flight.create!(date: date3 ,
	           duration: 600,
	           departure_airport_id: 1,
	           destination_airport_id: 4)
#LND - VCY
Flight.create!(date: date4 ,
	           duration: 180,
	           departure_airport_id: 3,
	           destination_airport_id: 5)
#LAX - LND
Flight.create!(date: date5 ,
	           duration: 240,
	           departure_airport_id: 4,
	           destination_airport_id: 3)

Booking.create!(flight_id: 1)
Booking.create!(flight_id: 2)
Passenger.create!(name: "Tom", email: "tom@email.com", booking_id: 1)
Passenger.create!(name: "Jack", email: "jack@email.com", booking_id: 1)
Passenger.create!(name: "Jim", email: "jim@email.com", booking_id: 2)





