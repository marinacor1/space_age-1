Rails.application.routes.draw do
  root to: "welcome#show"

  get "/packages", to: "packages#index"
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/signup', to: 'users#new'

  get '/trip', to: 'trip_packages#show'
  get '/orders', to: 'orders#index'
  post '/signup', to: 'users#create'
  get '/dashboard', to: 'users#show'
  post '/users', to: 'users#create'

  get '/logout', to: 'destroy#users'
  patch '/users/:id', to: 'users#update'
end
