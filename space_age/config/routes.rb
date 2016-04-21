Rails.application.routes.draw do
  root to: "welcome#show"
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  get '/signup', to: "users#new"
  get '/dashboard', to: "users#show"
  delete '/logout', to: 'sessions#destroy'

  resources :users, except: [:new, :show]

  get '/trip', to: "trip_packages#show"
  get '/checkout', to: "trip_packages#checkout"

  resources :packages, only: [ :index, :show ]
  resources :trip_packages, only: [ :create, :destroy, :update ]

  get '/:planet', to: "destinations#show", as: :destination
end
