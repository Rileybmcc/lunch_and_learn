require 'rails_helper'

RSpec.describe CountryService do
  describe 'returned data from country service methods', :vcr do

    it 'can instantiate' do
      expect(CountryService.new).to be_a(CountryService)
    end

    it 'returns an HTTP response of countries' do
      response = CountryService.random_country

      expect(response).to be_an(Array)
      expect(response[0]).to have_key(:name)
      expect(response[0][:name]).to have_key(:common)
      expect(response[0][:name]).to be_a(Hash)
      expect(response[0][:name][:common]).to be_an(String)
    end

    it 'can find a capitals coodinates given the country name' do
      response = CountryService.find_capital_by_country('Kenya')

      expect(response).to be_an(Array)
      expect(response[0]).to be_an(Hash)
      expect(response[0][:capitalInfo]).to be_a(Hash)
      expect(response[0][:capitalInfo][:latlng]).to be_an(Array)
      expect(response[0][:capitalInfo][:latlng][0]).to be_a(Float)
      expect(response[0][:capitalInfo][:latlng][0]).to eq(-1.28)
    end

  end
end
