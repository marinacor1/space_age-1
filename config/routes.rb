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

  get '/logout', to: 'sessions#destroy'
  get '/:planet', to: 'destinations#show', as: :destination
  get '/trip_packages', to: 'trip_packages#show'
  post '/trip_packages', to: 'trip_packages#show'
  # get '/orders/:id', to: 'orders#show'
  get '/orders', to: 'orders#index'

  namespace :admin do
    get '/dashboard', to: 'users#show'
    resources :users, only: [:update, :delete]
    get '/orders', to: 'orders#index'
  end
  # get '/packages/:id', to: 'packages#show'
  # patch '/users/:id', to: 'users#update'
  # put '/users/:id', to: 'users#update'
  get 'packages', to: 'packages#index'
  post '/orders', to: 'orders#create'
  resources :orders, only: [:show]
  post '/packages', to: 'packages#create'
  resources :packages, only: [ :show]
  post '/signup', to: 'users#create'
  resources :users, only: [:update]
end
