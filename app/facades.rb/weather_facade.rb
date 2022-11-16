class WeatherFacade

  def self.weather_by_position(lat, long)
    response = WeatherService.weather_by_position(lat, long)
    Weather.new(response)
  end

end
