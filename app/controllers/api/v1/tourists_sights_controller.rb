class Api::V1::TouristsSightsController < ApplicationController

  def index
    capital_lat_long = CountryFacade.find_capital(params[:country])
    locations = PlacesFacade.sights_near_capital(capital_lat_long[:lat], capital_lat_long[:long])
    require "pry"; binding.pry
    render json: { :data => locations}
  end

end
