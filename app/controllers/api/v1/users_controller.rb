class Api::V1::UsersController < ApplicationController

  def create
    user = User.new(name: params[:user][:name], email: params[:user][:email], api_key: SecureRandom.base64(12))

    if user.save        #User.find_by(id: user.email)
      render json: UserSerializer.new(user)
    else
      render json: {data: 'Email is Already Registered'}
    end
  end


end
