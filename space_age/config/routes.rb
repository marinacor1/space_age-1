Rails.application.routes.draw do
  root to: "welcome#show" 

  resources :packages, only: [ :index, :show ]

  resources :destinations, param: :planet, only: [ :show ]

  resources :trip_packages, only: [:create]


  get '/trip', to: "trip_packages#show"

end
