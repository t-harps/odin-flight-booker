class FlightsController < ApplicationController
  def index
  	@flights = Flight.search(params)
  	@airports = Airport.all.map { |a| [a.code, a.id] }
  	@dates = Flight.flight_dates
    @num_passengers = (1..4).to_a.collect { |x| [x, x] }
  end

  def show
  	@flight = Flight.find(params[:id])
  end
end
