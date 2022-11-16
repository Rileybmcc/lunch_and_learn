require 'rails_helper'

RSpec.describe EdamamService do
  it 'returns an HTTP response of tourist attactions near the capital', :vcr do
    response = PlacesService.places_near_capital(48.87, 2.33)
# require "pry"; binding.pry
    expect(response).to be_a(Hash)
    expect(response).to have_key(:features)
    expect(response[:features][0][:properties]).to have_key(:name)
    expect(response[:features][0][:properties]).to have_key(:address_line2)
    expect(response[:features][0][:properties]).to have_key(:place_id)
    expect(response[:features][0][:properties][:name]).to be_a(String)
  end
end
