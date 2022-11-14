class PlacesService

  def self.conn
    Faraday.new(url: "https://api.geoapify.com/v1") do |faraday|
      faraday.params['apiKey'] = ENV['geo_key']
    end
  end

  # def self.dishes_by_country(country)
  #   response = conn.get("?q=#{country}")
  #   JSON.parse(response.body, symbolize_names: true)
  # end

end
