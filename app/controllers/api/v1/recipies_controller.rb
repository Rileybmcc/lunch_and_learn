class Api::V1::RecipiesController < ApplicationController

  def show
    require "pry"; binding.pry
    if params[:country]

    else
      random_country = CountryFacade.random_country.shuffle.first
      recipies = 1 #RecipiesFacade.all_by_country(homeland)
    end

  end

end
