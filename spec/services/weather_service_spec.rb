require 'rails_helper'

RSpec.describe EdamamService do
#with more time this would get a stub
  it 'returns an HTTP response for weather in capital city', :vcr do
    response = WeatherService.weather_by_position(48.87, 2.88)

    expect(response).to be_a(Hash)
    expect(response).to have_key(:list)
    expect(response[:list][0]).to have_key(:main)
    expect(response[:list][0][:main][:aqi]).to be_an(Integer)
    expect(response[:list][0][:dt]).to be_an(Integer)

  end
end
