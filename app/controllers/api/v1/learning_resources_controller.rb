class Api::V1::LearningResourcesController < ApplicationController

  def show
    if params[:country]
      video = YoutubeFacade.country_video(params[:country])
      if video.length > 0
        render json: { :data => video }
      else
        render json: {:data => [] }
      end
    else
      random_video = []
      until random_video.count > 0 do
        random_country = CountryFacade.random_country.shuffle.first
        random_recipes = YoutubeFacade.vids_about_country(random_country.name)
      end
      render json: { :data => random_video }
    end
  end

end
