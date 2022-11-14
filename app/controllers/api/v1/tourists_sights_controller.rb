class Api::V1::TouristsSightsController < ApplicationController

  def index
    # require "pry"; binding.pry
    capital_lat_long = CountryFacade.find_capital(params[:country])

  end

end
