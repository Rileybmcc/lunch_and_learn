class CountryService

  def self.conn
    Faraday.new(url: 'https://restcountries.com/')
  end

  def self.random_country
    response = conn.get("/v3.1/all")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.find_capital_by_country(country)
    response = conn.get("/v3.1/name/#{country}?fullText=true")
    JSON.parse(response.body, symbolize_names: true)
  end

end
