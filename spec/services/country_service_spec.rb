require 'rails_helper'

RSpec.describe CountryService do
  it 'returns an HTTP response of countries', :vcr do
    response = CountryService.random_country

    expect(response[0]).to be_a(Hash)
    expect(response[0]).to have_key(:name)
    expect(response[0][:name]).to have_key(:common)
    expect(response[0][:name][:common]).to be_an(String)

  end
end
