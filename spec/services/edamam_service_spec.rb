require 'rails_helper'

RSpec.describe EdamamService do
  it 'returns an HTTP response of dishes by country', :vcr do
    response = EdamamService.dishes_by_country('Kenya')

    expect(response).to be_a(Hash)
    expect(response).to have_key(:hits)
    expect(response[:hits][0]).to have_key(:recipe)
    expect(response[:hits][0][:recipe][:uri]).to be_an(String)

  end
end
