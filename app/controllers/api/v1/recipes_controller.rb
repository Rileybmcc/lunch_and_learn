class Api::V1::RecipesController < ApplicationController

  def show
    if params[:country]
      recipes = EdamamFacade.recipes_by_country(params[:country])
      if recipes == nil
        render json: {:data => [] }
      else
        render json: DishSerializer.new(recipes)
        # render json: { :data => recipes }
      end
    else
      random_recipes = []
      until random_recipes.count > 0 do
        random_country = CountryFacade.random_country.shuffle.first
        random_recipes = EdamamFacade.recipes_by_country(random_country.name)
      end
      render json: DishSerializer.new(random_recipes)
      # render json: { :data => random_recipes }
    end
  end

end
