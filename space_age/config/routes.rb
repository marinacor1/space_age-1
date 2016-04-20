Rails.application.routes.draw do
  root to: "welcome#show"
  get '/login', to: "sessions#new"

  get '/signup', to: "users#new"

  resources :users, except: [:new]

  get '/trip', to: "trip_packages#show"

  resources :packages, only: [ :index, :show ]

  resources :trip_packages, only: [ :create, :destroy ]


  get '/:planet', to: "destinations#show", as: :destination


end
