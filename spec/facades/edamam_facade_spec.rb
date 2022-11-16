require 'rails_helper'

RSpec.describe EdamamFacade do
  describe 'ensure proper responses from CountryService' , :vcr do

    it 'returns a list of dishes' do
      list = EdamamFacade.recipes_by_country('Chad')

      expect(list).to be_an(Array)
      expect(list.first).to be_instance_of(Dish)
      expect(list[4]).to be_instance_of(Dish)
      expect(list.first.title).to be_a(String)

    end


  end
end
