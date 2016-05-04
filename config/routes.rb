Rails.application.routes.draw do
  root to: "welcome#show"
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  delete '/logout', to: 'sessions#destroy'

  post '/users', to: 'users#create'
  resources :users, only: [:update]
  get '/dashboard', to: 'users#show'

  namespace :admin do
    get '/dashboard', to: 'users#show'
    resources :users, only: [:update, :delete]
    get '/orders', to: 'orders#index'
  end

  get '/trip', to: 'trip_packages#show'
  post '/charges', to: 'charges#create'
  get '/charges/new', to: 'charges#new'
  get "/packages", to: "packages#index"
  post '/packages', to: 'packages#create'
  resources :packages, only: [ :show]

  get '/logout', to: 'sessions#destroy'
  get '/orders', to: 'orders#index'

  # get '/trip_packages', to: 'trip_packages#show'
  # post '/trip_packages', to: 'trip_packages#create'
  # patch '/trip_package', to: 'trip_packages#update'
  # put '/trip_packages'
  resources :trip_packages, only: [:create, :destroy, :update]
  # get '/orders/:id', to: 'orders#show'
  get '/orders', to: 'orders#index'
  resources :orders, only: [:show]

  # get '/packages/:id', to: 'packages#show'
  # patch '/users/:id', to: 'users#update'
  # put '/users/:id', to: 'users#update'
  post '/orders', to: 'orders#create'

  get '/:planet', to: 'destinations#show', as: :destination
  get '/destinations', to: 'destinations#create'

end
