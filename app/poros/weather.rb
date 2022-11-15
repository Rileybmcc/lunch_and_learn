class Video

  attr_reader :aqi,
              :datetime,
              :readable_aqi

  def initialize(weather_data)
  @aqi = weather_data[:]
  @datetime = weather_data[:]
  @readable_aqi = weather_data
  end

  def as_json(option={})
    {:id => 'null', :type => "air_quality", :attributes => {:aqi => self.aqi, :datetime => self.datetime, :readable_aqi => self.readable_aqi}}
  end

end
