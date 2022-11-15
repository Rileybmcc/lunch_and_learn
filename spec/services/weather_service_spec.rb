require 'rails_helper'

RSpec.describe EdamamService do
  it 'returns an HTTP response for weather in capital city', :vcr do
    response = WeatherService.weather_by_position(48.87, 2.88)

    expect(response).to be_a(Hash)
    expect(response).to have_key(:list)
    expect(response[:list][0]).to have_key(:recipe)
    expect(response[:list][0][:recipe][:uri]).to be_an(String)

  end
end
