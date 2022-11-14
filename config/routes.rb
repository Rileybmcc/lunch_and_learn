Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    namespace :v1 do

      get '/recipes', to: 'recipes#show'

      get '/tourist_sights', to: 'tourist_sights#index'

      # post '/favorites', to: 'favorites#'

    end
  end

end
