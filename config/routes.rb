Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :data_entries
      resources :posts
      resources :workouts
      resources :users, only: [:create]
      resources :exercises
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end
