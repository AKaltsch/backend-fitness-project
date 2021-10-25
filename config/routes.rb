Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :miles, only: [:index, :show, :update, :create, :delete]
      resources :distances, only: [:index, :show, :update, :create, :delete]
      resources :benchpresses, only: [:index, :show, :update, :create, :delete]
      resources :squats, only: [:index, :show, :update, :create, :delete]
      resources :hikes, only: [:index, :show, :update, :create, :delete]
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      # post "/users", to: 'users#create'
      get '/profile', to: 'users#profile'
      #get "/exercises", to: 'exercises#index'
      post '/auto_login', to: 'auth#auto_login'
      get '/logged_in', to: 'application#logged_in?'
      get '/miles', to: 'miles#index'
    end
  end
end
