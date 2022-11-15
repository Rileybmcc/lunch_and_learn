require 'rails_helper'

RSpec.describe Weather do
  before :each do
    @weather = Weather.new(
      {:coord=>{:lon=>77.2, :lat=>28.6},
        :list=>
          [{:main=>{:aqi=>5},
            :components=>{:co=>2563.48, :no=>8.27, :no2=>65.12, :o3=>1.7, :so2=>17.17, :pm2_5=>263.41, :pm10=>319.43, :nh3=>20.77},
            :dt=>1668534851}]})
  end

  it 'exists' do
    expect(@weather).to be_a(Weather)
  end

  it 'has attributes' do
    expect(@weather.aqi).to eq(5)
    expect(@weather.datetime).to eq(1668534851)
    expect(@weather.readable_aqi).to eq("Very Poor")
  end


  
end
