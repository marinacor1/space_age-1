Rails.application.routes.draw do
  root to: "welcome#show"
  get '/login', to: "sessions#new"

  get '/signup', to: "users#new"

  get '/dashboard', to: "users#show"

  resources :users, except: [:new, :show]

  get '/trip', to: "trip_packages#show"

  resources :packages, only: [ :index, :show ]

  resources :trip_packages, only: [ :create, :destroy ]


  get '/:planet', to: "destinations#show", as: :destination


end
