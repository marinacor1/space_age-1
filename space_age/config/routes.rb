Rails.application.routes.draw do

  root to: "welcome#show"
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  get '/signup', to: "users#new"

  delete '/logout', to: 'sessions#destroy'

  resources :users, only: [:create, :update]
  get '/dashboard', to: "users#show"

  namespace :admin do
    get '/dashboard', to: "users#show"
    resources :users, only: [:update, :delete]
    get '/orders' , to: "orders#index"
  end

  get '/trip', to: "trip_packages#show"
  resources :charges, only: [:new, :create]

  resources :packages, only: [:index, :show, :create]
  resources :trip_packages, only: [:create, :destroy, :update]
  resources :orders, only: [:show, :create]
  get '/orders' , to: "orders#index"

  get '/:planet', to: "destinations#show", as: :destination
  resources :destinations, only: [:create]
end
