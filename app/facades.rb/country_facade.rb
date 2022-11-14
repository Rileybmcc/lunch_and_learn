class CountryFacade

  def self.random_country
    response = CountryService.random_country

    response.map { |country_data| Country.new(country_data[:name]) }
  end

  def self.find_capital(country)
    response = CountryService.find_capital_by_country(country)
# require "pry"; binding.pry
    {:lat => response[0][:capitalInfo][:latlng][0], :long => response[0][:capitalInfo][:latlng][1]}
  end

end
