Rails.application.routes.draw do
  root to: "welcome#show"
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/signup', to: 'users#new'
  delete '/logout', to: 'sessions#destroy'

  get "/packages", to: "packages#index"

  get '/logout', to: 'sessions#destroy'
  get '/trip', to: 'trip_packages#show'
  get '/orders', to: 'orders#index'
  get '/dashboard', to: 'users#show'
  post '/users', to: 'users#create'

  get '/trip_packages', to: 'trip_packages#show'
  post '/trip_packages', to: 'trip_packages#show'
  patch '/trip_package', to: 'trip_packages#update'
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
  post '/orders', to: 'orders#create'
  resources :orders, only: [:show]
  post '/packages', to: 'packages#create'
  resources :packages, only: [ :show]
  post '/signup', to: 'users#create'
  resources :users, only: [:update]
  post '/charges', to: 'charges#create'
  get '/charges/new', to: 'charges#create'

  get '/:planet', to: 'destinations#show', as: :destination
  get '/destinations', to: 'destinations#create'

end
