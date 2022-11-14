class PlacesService

  def self.conn
    Faraday.new(url: "https://api.geoapify.com/v1") do |faraday|
      faraday.params['apiKey'] = ENV['geo_key']
      # faraday.params['filter']
    end
  end

  def self.places_near_capital(lat, lng)
    response = conn.get("places?filter=circle:#{lng},#{lat},20000")
    JSON.parse(response.body, symbolize_names: true)
  end

end
