class Api::V1::UsersController < ApplicationController

  def create
    # require "pry"; binding.pry
    user = User.create(name: params[:name], email: params[:email])

  end

end
