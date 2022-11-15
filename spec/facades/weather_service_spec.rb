require 'rails_helper'

RSpec.describe WeatherFacade do

  it 'returns weather instance', :vcr do   #with more time this would get a stub
    air_quality = WeatherFacade.weather_by_position(48.87, 2.88)
# require "pry"; binding.pry
    expect(air_quality).to be_instance_of(Weather)
    expect(air_quality.aqi).to eq(1)
    expect(air_quality.readable_aqi).to be_a(String)
    expect(air_quality.readable_aqi).to eq('Good')
    expect(air_quality.datetime).to be_a(Integer)

  end


end
