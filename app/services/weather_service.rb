class WeatherService

  def self.conn
    Faraday.new(url: 'https://api.openweathermap.org') do |faraday|
      faraday.params['appid'] = ENV['weather_key']
    end
  end

  def self.weather_by_position(lat, lng)
    response = conn.get("/data/3.0/onecall")do |faraday|
    faraday.params['lat'] = lat
    faraday.params['lon'] = long
    JSON.parse(response.body, symbolize_names: true)
  end

end
