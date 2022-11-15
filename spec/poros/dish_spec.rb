require 'rails_helper'

RSpec.describe Dish do
  describe 'can format dishes properly' do

    before :each do
      @dish = Dish.new(
        {:recipe => {:label => 'Salad', :uri => '1234', :image => "wasd"}},
         'Canada')
    end

    it 'can instanciate Dish' do
      expect(@dish).to be_a(Dish)
    end

    it 'Dish has attributes' do
      expect(@dish.country).to eq('Canada')
      expect(@dish.title).to eq("Salad")
      expect(@dish.url).to eq("1234")
      expect(@dish.image).to eq("wasd")
    end

  end
end
