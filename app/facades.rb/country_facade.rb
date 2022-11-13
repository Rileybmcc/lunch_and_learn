class CountryFacade 

  def self.random_country
    response = CountryService.random_country

    response.map { |country_data| Country.new(country_data[:name]) }
  end

end
