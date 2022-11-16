class PlacesFacade < PlacesService

  def self.sights_near_capital(lat, lng)
    geo_info = PlacesService.places_near_capital(lat, lng)
    locations = geo_info[:features].map { |place| Location.new(place) }

  end

end
