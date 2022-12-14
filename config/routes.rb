Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    namespace :v1 do

      get '/recipes', to: 'recipes#show'
      get '/learning_resources', to: 'learning_resources#show'

      post '/users', to: 'users#create'
      post '/favorites', to: 'favorites#create'

      get '/tourist_sights', to: 'tourists_sights#index'
      get '/air_quality', to: 'air_quality#show'
    end
  end

end
