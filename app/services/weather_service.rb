class WeatherService

  def self.conn
    Faraday.new(url: 'https://api.openweathermap.org') do |faraday|
      faraday.params['appid'] = ENV['weather_key']
    end
  end

  def self.weather_by_position(lat, lng)
    response = conn.get("/data/2.5/air_pollution")do |faraday|
      faraday.params['lat'] = lat
      faraday.params['lon'] = lng
    end
    # require "pry"; binding.pry
    JSON.parse(response.body, symbolize_names: true)
  end

end
