class EdamamService

  def self.conn
    Faraday.new(url: "https://api.edamam.com/api/recipes/v2") do |faraday|
      faraday.params['type'] = ENV['edamam_type']
      faraday.params['app_id'] = ENV['edamam_app_id']
      faraday.params['app_key'] = ENV['edamam_key']
    end
  end

  def self.dishes_by_country(country)
    response = conn.get("?q=#{country}")
    JSON.parse(response.body, symbolize_names: true)
  end

end
