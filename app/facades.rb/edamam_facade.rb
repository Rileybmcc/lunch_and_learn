class EdamamFacade < EdamamService

  def self.recipes_by_country(country)
    dishes_info = EdamamService.dishes_by_country(country)
    dish_instances = dishes_info[:hits].map { |dish_data| Dish.new(dish_data, country) }
  end

end
