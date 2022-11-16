class Api::V1::FavoritesController < ApplicationController

  def create
    fav = Favorite.new(api_key: params[:favorite][:api_key], country: params[:favorite][:country], recipe_link: params[:favorite][:recipe_link], recipe_title: params[:favorite][:recipe_title])
    if User.find_by(api_key: fav.api_key)
      fav.save
      render json: {"success": "Favorite added successfully"}
    else
      render json: {data: 'User Does Not Exist'}
    end
  end


end
