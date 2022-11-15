class WeatherFacade

  def self.weather_by_position(lat, long)
    response = WeatherService.weather_by_position(lat, long)
# require "pry"; binding.pry
    Weather.new(response)
  end

end
