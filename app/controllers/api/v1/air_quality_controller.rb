class Api::V1::AirQualityController < ApplicationController

  def show
    if params[:country]
      air_data = YoutubeFacade.country_video(params[:country])
      if air_data.length > 0
        render json: { :data => air_data }
      else
        render json: {:data => [] }
      end
    else
      random_air_data = []
      until random_video.count > 0 do
        random_country = CountryFacade.random_country.shuffle.first
        random_air_data =
      end
      render json: { :data => random_air_data }
    end
  end

end
