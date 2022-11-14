class PlacesFacade < PlacesService

  def self.sights_near_capital(lat, lng)     #name
    geo_info = PlacesService.places_near_capital(lat, lng)
    require "pry"; binding.pry
    locations = geo_info   #[:hits].map { |dish_data| Dish.new(dish_data, country) }
  end

end
