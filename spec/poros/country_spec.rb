require 'rails_helper'

RSpec.describe Country do
  before :each do
    @country = Country.new({common: 'Mexico'})
  end

  it 'exists' do
    expect(@country).to be_a(Country)
  end

  it 'has attributes', :vcr do
    expect(@country.name).to eq('Mexico')
  end
end
