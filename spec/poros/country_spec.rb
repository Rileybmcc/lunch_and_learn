require 'rails_helper'

RSpec.describe Country do
  describe 'can format all of countries attributes properly', :vcr do 

    before :each do
      @country = Country.new({common: 'Mexico'})
    end

    it 'can instatiate Country' do
      expect(@country).to be_a(Country)
    end

    it 'the country has attributes' do
      expect(@country.name).to eq('Mexico')
    end

  end
end
