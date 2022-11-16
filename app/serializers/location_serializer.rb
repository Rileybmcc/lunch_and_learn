class LocationSerializer
  include JSONAPI::Serializer

  set_id{nil}
  set_type 'tourist_sight'
  attributes :name, :address, :place_id

  # def as_json(option={})
  #   {:id => 'null', :type => 'tourist_sight', :attributes => {:name => self.name, :address => self.address, :place_id => self.place_id}}
  #   # {id: 'null', type: 'tourist_sight', attributes: {:name => self.name, :address => self.address, :place_id => self.place_id}}
  # end
end
