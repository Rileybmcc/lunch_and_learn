class DishSerializer

  def as_json(option={})
    {:id => 'null', :type => "recipe", :attributes => {:title => self.title, :url => self.url, :country => self.country, :image => self.image}}
  end

end
