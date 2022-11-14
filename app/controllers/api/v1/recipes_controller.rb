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
      recipes = EdamamFacade.recipes_by_country(random_country)
      if recipes == nil
        render json: {:data => [] }
      else
        render json: { :data => recipes }
      end
    end

  end

end
