class Dish

  attr_reader :country,
              :title,
              :url,
              :image

  def initialize(dish_data, country)
    @country = country
    @title = dish_data[:recipe][:label]
    @url = dish_data[:recipe][:uri]
    @image = dish_data[:recipe][:image]

  end

end
