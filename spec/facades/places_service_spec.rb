require 'rails_helper'

RSpec.describe EdamamFacade do
  it 'returns a list of attractions instanciated', :vcr do
    list = PlacesFacade.sights_near_capital(48.87, 2.33)

    expect(list).to be_an(Array)
    expect(list.first).to be_instance_of(Location)
    expect(list.first.name).to be_a(String)
  end
end
