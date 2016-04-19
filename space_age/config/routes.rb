Rails.application.routes.draw do
  resources :welcome, only: [ :index ]

  resources :packages, only: [ :index, :show ]

  resources :destinations, param: :planet, only: [ :show ]

  resources :trip_packages, only: [:create]

  root "welcome#index"

  get '/trip', to: "trip_packages#show"

end
