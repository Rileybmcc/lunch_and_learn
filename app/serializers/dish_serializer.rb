class DishSerializer
  include JSONAPI::Serializer

  set_id{nil}
  attributes :title, :url, :country, :image
  # {:id => 'null', :type => "recipe", :attributes => {:title => self.title, :url => self.url, :country => self.country, :image => self.image}}

end
