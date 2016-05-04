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
  get '/:planet', to: 'destinations#show', as: :destination
  get '/trip_packages', to: 'trip_packages#show'
  post '/trip_packages', to: 'trip_packages#show'
  # get '/orders/:id', to: 'orders#show'
  get '/orders', to: 'orders#index'
  # get '/packages/:id', to: 'packages#show'
  # patch '/users/:id', to: 'users#update'
  # put '/users/:id', to: 'users#update'
  resources :orders, only: [:show, :create]
  resources :packages, only: [:index, :show, :create]
  resources :users, only: [:create, :update]
end
