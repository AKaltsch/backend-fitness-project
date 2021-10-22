Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :data_entries, only: [:index, :create, :destroy, :update]
      resources :posts
      resources :workouts, only: [:index, :create, :destroy, :update]
      resources :users, only: [:create]
      resources :exercises, only: [:index, :create, :destroy, :update]
      post '/login', to: 'auth#create'
      # post "/users", to: 'users#create'
      get '/profile', to: 'users#profile'
      #get "/exercises", to: 'exercises#index'
      post '/auto_login', to: 'auth#auto_login'
      get '/logged_in', to: 'application#logged_in?'
    end
  end
end
