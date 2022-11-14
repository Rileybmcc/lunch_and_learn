require 'rails_helper'

RSpec.describe EdamamFacade do
  it 'returns a list of dishes', :vcr do
    list = EdamamFacade.recipes_by_country('Chad')

    expect(list).to be_an(Array)
    expect(list.first).to be_instance_of(Dish)
    expect(list.first.title).to be_a(String)
  end
end
