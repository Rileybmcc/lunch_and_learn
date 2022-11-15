class Api::V1::RecipesController < ApplicationController

  def show
    if params[:country]
      recipes = EdamamFacade.recipes_by_country(params[:country])
      if recipes == nil
        render json: {:data => [] }
      else
        render json: { :data => recipes }
      end
    else
      random_country = CountryFacade.random_country.shuffle.first
# require "pry"; binding.pry
      random_recipes = EdamamFacade.recipes_by_country(random_country.name)
      if random_recipes.count > 0
        render json: { :data => random_recipes }
      else
        render json: {:data => [] }
      end
    end

  end

end
