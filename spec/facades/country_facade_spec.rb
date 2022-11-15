require 'rails_helper'

RSpec.describe CountryFacade do
  describe 'ensure proper responses from CountryService', :vcr do

    it 'returns a list of countries' do
      list = CountryFacade.random_country

      expect(list).to be_an(Array)
      expect(list.first).to be_instance_of(Country)
      expect(list.first.name).to be_a(String)

      expect(list.length).to eq(CountryService.random_country.length)
    end

    it 'can find coordinates for the capital of a given country' do
      coordinates = CountryFacade.find_capital('France')

      expect(coordinates).to be_an(Hash)
      expect(coordinates).to have_key(:lat)
      expect(coordinates).to have_key(:long)
      expect(coordinates[:lat].class).to eq(Float)
      expect(coordinates[:long].class).to eq(Float)
      expect(coordinates[:lat]).to eq(48.87)
      expect(coordinates[:long]).to eq(2.33)
    end

  end
end
