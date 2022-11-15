class CountryFacade

  def self.random_country
    response = CountryService.random_country

    response.map { |country_data| Country.new(country_data[:name]) }
  end

  def self.find_capital(country)
    countries = CountryFacade.random_country

    if countries.map { |place| place.name.downcase }.include?(country)
      response = CountryService.find_capital_by_country(country)
      {:lat => response[0][:capitalInfo][:latlng][0], :long => response[0][:capitalInfo][:latlng][1]}
    else
      "Invalid Country"
    end
  end

end
