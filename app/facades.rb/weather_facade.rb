class WeatherFacade

  def self.weather_by_position(lat, long)
    response = weatherService.find_capital_by_country(lat, long)
# require "pry"; binding.pry
    Weather.new(response)
  end

end
