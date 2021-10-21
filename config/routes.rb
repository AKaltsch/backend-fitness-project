Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :data_entries
      resources :posts
      resources :workouts
      resources :users, only: [:create]
      resources :exercises
      post '/login', to: 'auth#create'
      post "/users", to: 'users#create'
      get '/profile', to: 'users#profile'
      #get "/exercises", to: 'exercises#index'
    end
  end
end
