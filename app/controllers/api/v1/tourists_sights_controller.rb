class Api::V1::TouristsSightsController < ApplicationController

  def index
    capital_lat_long = CountryFacade.find_capital(params[:country])
    require "pry"; binding.pry
    locations = PlacesFacade.places_near_capital(capital_lat_long[:lat], capital_lat_long[:long])

  end

end
