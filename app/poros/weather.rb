class Weather

  attr_reader :aqi,
              :datetime,
              :readable_aqi

  def initialize(weather_data)
  @aqi = weather_data[:list][0][:main][:aqi]
  @datetime = weather_data[:list][0][:dt]
  @readable_aqi = calculate_readable(@aqi)
  end

  def calculate_readable(aqi)
    if aqi == 1
      'Good'
    elsif aqi == 2
      'Fair'
    elsif aqi == 3
      'Moderate'
    elsif aqi == 4
      'Poor'
    elsif aqi == 5
      'Very Poor'
    else
      'Unknown'
    end
  end


  def as_json(option={})
    {:id => 'null', :type => "air_quality", :attributes => {:aqi => self.aqi, :datetime => self.datetime, :readable_aqi => self.readable_aqi}}
  end

end
