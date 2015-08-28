class Flight < ActiveRecord::Base
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :destination_airport, class_name: "Airport"
  has_many :bookings
  has_many :passengers, :through => :bookings

  def self.search(params)
  	if params[:search]
  	  Flight.on_date(params[:date].to_date)
  	  .where(departure_airport_id: params[:departure_airport_id], destination_airport_id: params[:destination_airport_id])
  	  .includes(:departure_airport, :destination_airport)
  	end
  end

  def self.flight_dates
    all.collect { |f| [f.formatted_date, f.date.to_date] }.uniq
  end

  def self.on_date(date)
    # elegant solution from: http://stackoverflow.com/questions/2381718/rails-activerecord-date-between
    where(date: date.beginning_of_day..date.end_of_day)
  end
  
  def formatted_date
    date.to_date.strftime("%m/%d/%y")
  end
end
