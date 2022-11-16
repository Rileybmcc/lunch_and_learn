class PlacesFacade < PlacesService

  def self.sights_near_capital(lat, lng)
    # require "pry"; binding.pry
    geo_info = PlacesService.places_near_capital(lat, lng)
    # require "pry"; binding.pry
    locations = geo_info[:features].map { |place| Location.new(place) }

  end

end
