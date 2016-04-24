Rails.application.routes.draw do

  root to: "welcome#show"
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  get '/signup', to: "users#new"

  get '/dashboard', to: "users#show"

  delete '/logout', to: 'sessions#destroy'

  resources :users, except: [:new]
  get '/dashboard', to: "users#show"

  namespace :admin do
    get '/dashboard', to: "users#show"
  end

  get '/trip', to: "trip_packages#show"

  resources :packages, only: [ :index, :show ]
  resources :trip_packages, only: [ :create, :destroy, :update ]
  resources :orders, only: [ :show, :create ]
  get '/orders' , to: "orders#index"

  get '/:planet', to: "destinations#show", as: :destination
end
