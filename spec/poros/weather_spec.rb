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

  it 'has can return good' do
    weather = Weather.new(
      {:coord=>{:lon=>77.2, :lat=>28.6},
        :list=>
          [{:main=>{:aqi=>1},
            :components=>{:co=>2563.48, :no=>8.27, :no2=>65.12, :o3=>1.7, :so2=>17.17, :pm2_5=>263.41, :pm10=>319.43, :nh3=>20.77},
            :dt=>1668534851}]
      })

    expect(weather.aqi).to eq(1)
    expect(weather.readable_aqi).to eq("Good")
  end

  it 'has can return fair' do
    weather = Weather.new(
      {:coord=>{:lon=>77.2, :lat=>28.6},
        :list=>
          [{:main=>{:aqi=>2},
            :components=>{:co=>2563.48, :no=>8.27, :no2=>65.12, :o3=>1.7, :so2=>17.17, :pm2_5=>263.41, :pm10=>319.43, :nh3=>20.77},
            :dt=>1668534851}]
      })

    expect(weather.aqi).to eq(2)
    expect(weather.readable_aqi).to eq("Fair")
  end

  it 'has can return moderate' do
    weather = Weather.new(
      {:coord=>{:lon=>77.2, :lat=>28.6},
        :list=>
          [{:main=>{:aqi=>3},
            :components=>{:co=>2563.48, :no=>8.27, :no2=>65.12, :o3=>1.7, :so2=>17.17, :pm2_5=>263.41, :pm10=>319.43, :nh3=>20.77},
            :dt=>1668534851}]
      })

    expect(weather.aqi).to eq(3)
    expect(weather.readable_aqi).to eq("Moderate")
  end

  it 'has can return poor' do
    weather = Weather.new(
      {:coord=>{:lon=>77.2, :lat=>28.6},
        :list=>
          [{:main=>{:aqi=>4},
            :components=>{:co=>2563.48, :no=>8.27, :no2=>65.12, :o3=>1.7, :so2=>17.17, :pm2_5=>263.41, :pm10=>319.43, :nh3=>20.77},
            :dt=>1668534851}]
      })

    expect(weather.aqi).to eq(4)
    expect(weather.readable_aqi).to eq("Poor")
  end

  it 'has can return unknown if service fails to provide appropriate aqi' do
    weather = Weather.new(
      {:coord=>{:lon=>77.2, :lat=>28.6},
        :list=>
          [{:main=>{:aqi=>nil},
            :components=>{:co=>2563.48, :no=>8.27, :no2=>65.12, :o3=>1.7, :so2=>17.17, :pm2_5=>263.41, :pm10=>319.43, :nh3=>20.77},
            :dt=>1668534851}]
      })

    expect(weather.aqi).to eq(nil)
    expect(weather.readable_aqi).to eq("Unknown")
  end

  it 'can create json objects' do
    expect(@weather.as_json).to eq({"id": nil, "type": "air_quality", "attributes": {"aqi": 5, "datetime": 1668534851, "readable_aqi": "Very Poor"}})

  end


end
