class LocationSerializer < ApplicationRecord
  # include JSONAPI::Serializer
  def as_json(option={})
    {:id => 'null', :type => 'tourist_sight', :attributes => {:name => self.name, :address => self.address, :place_id => self.place_id}}
    # {id: 'null', type: 'tourist_sight', attributes: {:name => self.name, :address => self.address, :place_id => self.place_id}}
  end

end
