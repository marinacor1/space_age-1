Rails.application.routes.draw do
  root to: "welcome#show"
  get '/trip', to: "trip_packages#show"

  resources :packages, only: [ :index, :show ]

  resources :trip_packages, only: [ :create, :destroy, :update ]


  get '/:planet', to: "destinations#show", as: :destination

end
