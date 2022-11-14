require 'rails_helper'

RSpec.describe CountryFacade do
  it 'returns a list of countries', :vcr do
    list = CountryFacade.random_country

    expect(list).to be_an(Array)
    expect(list.first).to be_instance_of(Country)
    expect(list.first.name).to be_a(String)
  end
end
