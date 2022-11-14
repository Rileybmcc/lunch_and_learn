class PlacesService

  def self.conn
    Faraday.new(url: "https://api.geoapify.com/v2") do |faraday|
      faraday.params['apiKey'] = ENV['geo_key']
      # faraday.params['categories'] = ENV['geo_category']
    end
  end

  def self.places_near_capital(lat, lng)
    response = conn.get("places?filter=circle:#{lng.to_s.concat"00"},#{lat.to_s.concat"00"},20000&categories=tourism.sights")
    JSON.parse(response.body, symbolize_names: true)
  end

end
