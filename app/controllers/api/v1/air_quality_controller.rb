class Api::V1::AirQualityController < ApplicationController

  def show
    if params[:country]
      capital_lat_long = CountryFacade.find_capital(params[:country])
      air_data = WeatherFacade.weather_by_position(capital_lat_long[:lat], capital_lat_long[:long]) if capital_lat_long.class == Array

      if capital_lat_long == "Invalid Country"
        render json: {:data => [ :error => "Invalid Country"] }
      elsif air_data.aqi.class == Integer
        render json: { :data => air_data }
      else
        render json: {:data => [] }
      end
    else
        random_country = CountryFacade.random_country.shuffle.first   #rename all_countries, used in random countries but provides all countries; before .shuffle.first
        capital_lat_long = CountryFacade.find_capital(random_country.name)
        random_air_data = WeatherFacade.weather_by_position(capital_lat_long[:lat], capital_lat_long[:long])

      render json: { :data => random_air_data }

      # this was what I asked about on slack; below
      # render json: { :country => random_country.name, :data => random_air_data }
    end
  end

end
