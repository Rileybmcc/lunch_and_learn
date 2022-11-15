class Location
  attr_reader :name,
              :address,
              :place_id

  def initialize(data)
    @name = data[:properties][:name]
    @address = data[:properties][:address_line2]
    @place_id = data[:properties][:place_id]
  end

  def as_json(option={})
    {:id => null, :type => 'tourist_sight', :attributes => {:name => self.name, :address => self.address, :place_id => self.place_id}}
  end


end
